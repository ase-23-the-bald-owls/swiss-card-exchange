spb = require('@supabase/supabase-js')
require('dotenv').config();
const nodemailer = require('nodemailer')


// Create a single supabase client for interacting with your database
const supabase = spb.createClient('http://localhost:54321','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0')

async function loadTable() {

    const { data, error } = await supabase
    .from('orders')
    .select(`
        *, 
            customer!left (user_name)
    `)
    .eq('notification_sent',false)
    
  
  
    console.log(data);
    console.log(error);
    console.log(data[0].customer.user_name);


    const testAccount = await nodemailer.createTestAccount();
    const transporter = nodemailer.createTransport({
      port: 1025,
    });


    

  const info = await transporter.sendMail({
    from: 'info@sce.ch', 
    to:  data[0].customer.user_name, 
    subject: 'Your order', 
    text: "Dear Customer, thanks for order with the following info: "+  data[0].id, 
    html: "<b>Dear Customer, thanks for order with the following info:" +  data[0].id + "</b>", 
  });

  console.log("Message sent: %s", info.messageId);
  // Message sent: <b658f8ca-6296-ccf4-8306-87d57a0b4321@example.com>

  // Preview only available when sending through an Ethereal account
  console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
  // Preview URL: https://ethereal.email/message/WaQKMgKddxQDoou...
   
}

loadTable();