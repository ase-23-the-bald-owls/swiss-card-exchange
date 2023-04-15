import { throwIfSupabaseFailed, useBrowserSupabase } from '@/hooks/useSupabaseBrowser';
import { CustomerWithId, CustomerWithoutId } from '@/lib/customers';
import { OrderItemWithId, OrderItemWithoutId } from '@/lib/orderItems';
import { OrderState, OrderWithId, OrderWithoutId } from '@/lib/orders';
import {
  getBillingAddressAtom,
  paymentAmountAtom,
  shippingAddressAtom,
} from '@/store/checkoutStore';
import {
  clearShoppingCart,
  getAllItemsAsMap,
  totalShoppingCartPriceAtom,
} from '@/store/shoppingCartStore';
import { useAtom } from 'jotai/react';

export function useSubmitOrder() {
  const [shoppingCartLineItems] = useAtom(getAllItemsAsMap);
  const [shippingAddress] = useAtom(shippingAddressAtom);
  const [billingAddress] = useAtom(getBillingAddressAtom);
  const [totalShoppingCartPrice] = useAtom(totalShoppingCartPriceAtom);
  const [, setPaymentAmount] = useAtom(paymentAmountAtom);
  const supabaseClient = useBrowserSupabase();

  async function submitOrder() {
    const insertedCustomer = await insertCustomer();

    const insertedOrder = await insertOrder(insertedCustomer);

    const insertedOrderItems = await insertOrderItems(insertedOrder);

    setPaymentAmount(totalShoppingCartPrice);
    clearShoppingCart();

    return {
      customer: insertedCustomer,
      order: insertedOrder,
      orderItems: insertedOrderItems,
    };
  }

  return {
    submitOrder,
  };

  async function insertCustomer() {
    const customer: CustomerWithoutId = {
      billing_address: `
      ${billingAddress?.firstname} ${billingAddress?.name}
      ${billingAddress?.company}
      ${billingAddress?.address}
      ${billingAddress?.zipCode} ${billingAddress?.city}
      `,
      shipping_address: `
      ${shippingAddress?.firstname} ${shippingAddress?.name}
      ${shippingAddress?.company}
      ${shippingAddress?.address}
      ${shippingAddress?.zipCode} ${shippingAddress?.city}
      `,
      user_name: shippingAddress?.email,
    };
    const { data: maybeCustomer, error: insertCustomerError } = await supabaseClient
      .from('customer')
      .insert(customer)
      .select();
    throwIfSupabaseFailed(insertCustomerError, maybeCustomer, 'customer');
    return maybeCustomer?.at(0) as never as CustomerWithId;
  }

  async function insertOrder(insertedCustomer: CustomerWithId) {
    const order: OrderWithoutId = {
      order_state: OrderState.ORDERED,
      customer_id: insertedCustomer.id,
    };
    const { data: maybeOrder, error: insertOrderError } = await supabaseClient
      .from('orders')
      .insert(order)
      .select();
    throwIfSupabaseFailed(insertOrderError, maybeOrder, 'order');
    return maybeOrder?.at(0) as never as OrderWithId;
  }

  async function insertOrderItems(insertedOrder: OrderWithId) {
    const { data: maybeOrderItems, error: insertOrderItemsError } = await supabaseClient
      .from('orderitem')
      .insert(createOrderItems(insertedOrder))
      .select();
    throwIfSupabaseFailed(insertOrderItemsError, maybeOrderItems, 'orderitem');
    return maybeOrderItems as OrderItemWithId[];
  }

  function createOrderItems(order: OrderWithId) {
    return Array.from(shoppingCartLineItems).map(
      ([entry]) =>
        ({
          order_id: order.id,
          product_id: entry.product.id,
          quantity: entry.numberOfProducts,
        } as OrderItemWithoutId)
    );
  }
}
