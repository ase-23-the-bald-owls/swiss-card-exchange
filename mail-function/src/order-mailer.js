spb = require('@supabase/supabase-js')
require('dotenv').config();
const nodemailer = require('nodemailer')


// Create a single supabase client for interacting with your database
const supabase = spb.createClient()

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
    
  
  
    
    // console.log(data);
    // console.log(error);
    // console.log(data[0].customer.user_name);

    
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


async function main(){


  await loadDBData(recipients,orders);

  await notificationMail(recipients,orders);

 //TODO implement a supabase update for the boolean values. 
}

main();