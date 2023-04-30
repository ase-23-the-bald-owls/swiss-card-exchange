import { SupabaseServerType } from '@/utils/supabase-server';

export function fetchOrdersWith(supabaseServer: SupabaseServerType) {
  return {
    selectOrdersAndChildEntities() {
      return supabaseServer.from('orders').select(
        `*, 
        orderitems:orderitem!left(
            *, 
            product:products!left(*)
        ),
        customer!left(
            *,
            billing_address:addresses!customer_billing_address_id_fkey(*),
            shipping_address:addresses!customer_shipping_address_id_fkey(*)
        )`
      );
    },
  };
}
