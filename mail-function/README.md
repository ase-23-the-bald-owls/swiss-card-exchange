# mail-function

This function sends emails to confirm the orders to the customers.
It retrieves it's data from the supabase instance and then sends email to the MailHog instance
defined in [docker-compose.yml](../docker-compose.yml).  
It is a javascript module, thus the [index.mjs](src/index.mjs) has the mjs extension instead of the js extension.
To run it, you need to first start the supabase development setup. How to start it is described in [app/README.md](../app/README.md).
Then you need to start MailHog with `docker compose -f ../docker-compose.yml up -d`.  
Then you can run the function with `npm run exec` and see the mails sent in the MailHog web interface <http://localhost:8025>.  
For production an image is build with [Dockerfile](Dockerfile).
It is also a TerraForm module which describes how it is deployed to LocalStack.
