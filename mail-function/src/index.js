#!/usr/bin/env node
//const {createClient} = require('@supabase/supabase-js');
const nodemailer = require('nodemailer')


// console.log('Hello World!')
// require('dotenv').config()
// console.log(process.env)

//const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL,process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY)

async function main() {
    // const { data: supabaseResult, error } = await supabase
    // .from('products')
    // .select('*')
   
  // supabase does not type the result nicely, so we cast it

  //console.log(supabaseResult);

  let testAccount = await nodemailer.createTestAccount();

  let transporter = nodemailer.createTransport({
    port: 1025,
    
  });
 

  let info = await transporter.sendMail({
    from: '"Fred Foo 👻" <foo@example.com>', // sender address
    to: "bar@example.com, baz@example.com", // list of receivers
    subject: "Hello ✔", // Subject line
    text: "Hello world?", // plain text body
    html: "<b>Hello world?</b>", // html body
  });

  console.log("Message sent: %s", info.messageId);
  // Message sent: <b658f8ca-6296-ccf4-8306-87d57a0b4321@example.com>

  // Preview only available when sending through an Ethereal account
  console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
  // Preview URL: https://ethereal.email/message/WaQKMgKddxQDoou...
}



  
main().catch(console.error);