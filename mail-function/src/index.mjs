#!/usr/bin/env node --input-type=module - "$@" > "$0"
import { createClient } from '@supabase/supabase-js';
import { config } from 'dotenv';
import { createTransport } from 'nodemailer';

config();

// Create a single supabase client for interacting with your database
const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.NEXT_PUBLIC_SUPABASE_SERVICE_ROLE_KEY
);

const dbData = await loadDBData();

await notificationMail(dbData);

await updateSPB(dbData);

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
  const transporter = createTransport({
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
