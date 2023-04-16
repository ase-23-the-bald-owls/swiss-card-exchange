spb = require('@supabase/supabase-js')
require('dotenv').config();
const nodemailer = require('nodemailer')


// Create a single supabase client for interacting with your database
const supabase = spb.createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY) //TODO please watch sensitive files. create a .§env 

const recipients = []
const orders = []

async function loadDBData(rec,ord) {

    const { data, error } = await supabase
    .from('orders')
    .select(`
        *, 
            customer!left (user_name)
    `)
    .eq('notification_sent',false)
    
  
    
  data.forEach(element => {
   rec.push(element.customer.user_name)
   ord.push(element.id)
     
  });
    
  
  
}

async function notificationMail(rec,ord){


  const transporter = nodemailer.createTransport({
    port: 1025,
  });

  let info;

  for ( let i = 0; i < rec.length; i++){
     info = await transporter.sendMail({
      from: 'info@sce.ch', 
      to:  rec[i], 
      subject: 'Your order status', 
      text: "Dear Customer, thanks for order with the following info: order nr.  "+  ord[i], 
      html: "<b>Dear Customer, thanks for order with the following info: order nr. " +  ord[i] + "</b>", 

    })

    
    console.log("Message sent: %s", info.messageId);
    // Message sent: <b658f8ca-6296-ccf4-8306-87d57a0b4321@example.com>

    // Preview only available when sending through an Ethereal account
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
    // Preview URL: https://ethereal.email/message/WaQKMgKddxQDoou...
      }

}


async function updateSPB(ord){

  for(let i = 0 ; i < ord.length ; i++){
    const { error } = await supabase
    .from('orders')
    .update({ notification_sent: true })
    .eq('id', ord[i])
    
    console.log(error)
  }


}


async function main(){


  await loadDBData(recipients,orders);

  await notificationMail(recipients,orders);

  await updateSPB(orders)
}

main();