#!/usr/bin/env node
const {createClient} = require('@supabase/supabase-js');



console.log('Hello World!')
require('dotenv').config()
console.log(process.env)

const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL,process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY)

async function main() {
    const { data: supabaseResult, error } = await supabase
    .from('products')
    .select('*')
   
  // supabase does not type the result nicely, so we cast it

  console.log(supabaseResult);

}

  
main();