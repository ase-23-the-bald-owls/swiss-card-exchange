import { throwIfSupabaseFailed, useBrowserSupabase } from '@/hooks/useSupabaseBrowser';
import { AddressWithId, AddressWithoutId } from '@/lib/addresses';
import { CustomerWithId, CustomerWithoutId } from '@/lib/customers';
import { OrderItemWithId, OrderItemWithoutId } from '@/lib/orderItems';
import { OrderState, OrderWithId, OrderWithoutId } from '@/lib/orders';
import {
  Address,
  getBillingAddressAtom,
  paymentAmountAtom,
  shippingAddressAtom,
} from '@/store/checkoutStore';
import {
  clearShoppingCart,
  getAllItemsAsMap,
  totalShoppingCartPriceAtom,
} from '@/store/shoppingCartStore';
import { useUser } from '@supabase/auth-helpers-react';
import { useAtom } from 'jotai/react';

export function useSubmitOrder() {
  const [shoppingCartLineItems] = useAtom(getAllItemsAsMap);
  const [shippingAddress] = useAtom(shippingAddressAtom);
  const [billingAddress] = useAtom(getBillingAddressAtom);
  const [totalShoppingCartPrice] = useAtom(totalShoppingCartPriceAtom);
  const [, setPaymentAmount] = useAtom(paymentAmountAtom);
  const supabaseClient = useBrowserSupabase();
  const user = useUser();

  async function submitOrder() {
    const insertedShippingAddress = await insertAddress(
      // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
      removeEmailProperty(shippingAddress!)
    );
    const insertedBillingAddress = await insertAddress(
      // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
      removeEmailProperty(billingAddress!)
    );

    const insertedCustomer = await insertCustomer(
      insertedShippingAddress,
      insertedBillingAddress
    );

    const insertedOrder = await insertOrder(insertedCustomer);

    const insertedOrderItems = await insertOrderItems(insertedOrder);

    setPaymentAmount(totalShoppingCartPrice);
    clearShoppingCart();

    return {
      shippingAddress: insertedShippingAddress,
      billingAddress: insertedBillingAddress,
      customer: insertedCustomer,
      order: insertedOrder,
      orderItems: insertedOrderItems,
    };
  }

  return {
    submitOrder,
  };

  async function insertAddress(address: Address) {
    const addressToInsert: AddressWithoutId = {
      ...address,
      zip_code: address.zipCode,
    };
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    delete addressToInsert.zipCode;
    const { data: maybeAddress, error: insertAddressError } = await supabaseClient
      .from('addresses')
      .insert(addressToInsert)
      .select();
    throwIfSupabaseFailed(insertAddressError, maybeAddress, 'address');
    return maybeAddress?.at(0) as never as AddressWithId;
  }

  async function insertCustomer(
    insertedShippingAddress: AddressWithId,
    insertedBillingAddress: AddressWithId
  ) {
    const customer: CustomerWithoutId = {
      billing_address_id: insertedBillingAddress.id,
      shipping_address_id: insertedShippingAddress.id,
      // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
      email: shippingAddress!.email,
      user_id: user?.id ?? null,
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

function removeEmailProperty(shippingAddress: Address) {
  const addressWithoutEmail = {
    ...shippingAddress,
  } as Address;
  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-ignore
  delete addressWithoutEmail.email;
  return addressWithoutEmail;
}
