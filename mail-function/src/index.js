#!/usr/bin/env node
const spb = require('@supabase/supabase-js');
require('dotenv').config();
const nodemailer = require('nodemailer');

// Create a single supabase client for interacting with your database
const supabase = spb.createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
);

const recipients = [];
const orders = [];

async function loadDBData(rec, ord) {
  const { data } = await supabase
    .from('orders')
    .select(
      `
        *, 
            customer!left (email)
    `
    )
    .eq('notification_sent', false);

  data.forEach((element) => {
    rec.push(element.customer.email);
    ord.push(element.id);
  });
}

async function notificationMail(rec, ord) {
  const transporter = nodemailer.createTransport({
    port: 1025,
    secure: false,
  });

  let info;

  for (let i = 0; i < rec.length; i++) {
    info = await transporter.sendMail({
      from: 'info@sce.ch',
      to: rec[i],
      subject: 'Your order status',
      text:
        'Dear Customer, thanks for order with the following info: order nr.  ' + ord[i],
      html:
        '<b>Dear Customer, thanks for order with the following info: order nr. ' +
        ord[i] +
        '</b>',
    });
    console.log('Message sent: %s', info.messageId);
    // Message sent: <b658f8ca-6296-ccf4-8306-87d57a0b4321@example.com>

    console.log(info.response);
  }
}

async function updateSPB(ord) {
  for (const element of ord) {
    const { error } = await supabase
      .from('orders')
      .update({ notification_sent: true })
      .eq('id', element);

    console.log(error);
  }
}

async function main() {
  await loadDBData(recipients, orders);

  await notificationMail(recipients, orders);

  await updateSPB(orders);
}

main();
