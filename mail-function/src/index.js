#!/usr/bin/env node
const spb = require('@supabase/supabase-js');
require('dotenv').config();
const nodemailer = require('nodemailer');

// Create a single supabase client for interacting with your database
const supabase = spb.createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
);

async function main() {
  const dbData = await loadDBData();

  await notificationMail(dbData);

  await updateSPB(dbData);
}

// noinspection JSIgnoredPromiseFromCall
main();

async function loadDBData() {
  const { data, error } = await supabase
    .from('orders')
    .select(
      `
        *, 
            customer!left (email)
    `
    )
    .eq('notification_sent', false);

  if (error || !data || !Array.isArray(data)) {
    throw Error(
      error?.message || `data returned was not valid, was: ${JSON.stringify(data)}`
    );
  }
  return data.map((order) => [order.id, order.customer.email]);
}

async function notificationMail(orders) {
  const transporter = nodemailer.createTransport({
    port: 1025,
    secure: false,
  });

  for (const [orderId, email] of orders) {
    const info = await transporter.sendMail({
      from: 'info@sce.ch',
      to: email,
      subject: 'Your order status',
      text: `Dear Customer, thanks for order with the following info: order nr.  ${orderId}`,
      html: `<b>Dear Customer, thanks for order with the following info: order nr. ${orderId}</b>`,
    });
    console.log('Message sent: %s', info.messageId);
    // Message sent: <b658f8ca-6296-ccf4-8306-87d57a0b4321@example.com>

    console.log(info.response);
  }
}
async function updateSPB(orders) {
  for (const [orderId] of orders) {
    const { error } = await supabase
      .from('orders')
      .update({ notification_sent: true })
      .eq('id', orderId);

    console.log(error);
  }
}
