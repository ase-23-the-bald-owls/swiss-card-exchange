import { createSupabaseServer } from "./supabase-server";

interface Products{
    id: string
}



export async function getProduct({id}:Products) {
    const supabaseServer = createSupabaseServer();
    const { data } = await supabaseServer
    .from('products')
    .select()
    .eq('id',id);
    return {
      props: { products: data },
    };

}