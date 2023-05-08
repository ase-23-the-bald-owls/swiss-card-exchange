This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started

First, run the development server:

```bash
# start supabase
npm run supabase start

# you find supabase on http://localhost:54323
cp .env.example .env.local
# add the anon key of the output of the supabase start command into .env.local

npm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## NEXT.js

The different directories have the following semantics:

### [pages](src/pages)

Next.js uses file system based routing.
The system works as follows:

| File                                                                       | Route                           |
| -------------------------------------------------------------------------- | ------------------------------- |
| [pages/index.tsx](src/pages/index.tsx)                                     | <http://localhost:3000/>        |
| [pages/backend.tsx](src/pages/backend.tsx)                                 | <http://localhost:3000/backend> |
| [pages/edit/index.tsx](src/pages/edit/index.tsx)                           | <http://localhost:3000/edit>    |
| [pages/edit/\[productId\]/index.tsx](src/pages/edit/[productId]/index.tsx) | <http://localhost:3000/edit/1/> |

### [components](src/components)

If a page becomes to big or it's possible to share a component between 2 pages, the extracted component
is moved here.

### [lib](src/lib)

Here are the type definitions for the api. [database.types.ts](src/lib/database.types.ts) is generated from
the schema provided by supabase with `npm run generate-types`. Then we have some helper types (e.g. [products.ts](src/lib/products.ts))
for all the entities that can be used in the views or in the hooks. [schema.ts](src/lib/schema.ts) contains
the intersection type for all entities.

### [store](src/store)

Here we have the [jotai](https://jotai.org/) stores that manage the local state in the frontend.  
[shoppingCartStore.ts](src/store/shoppingCartStore.ts) stores the products in the shopping cart.  
[checkoutStore.ts](src/store/checkoutStore.ts) stores the shippingAddress and the billingAddress used for the checkout.

### [hooks](src/hooks)

Here are the custom hooks that abstract away the logic to save the local state of the frontend in the api.

### [orders](src/orders)

To fetch the orders we need to join some entities. To follow the [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself "Don't repeat yourself") we moved
this function into a separate directory.

### [utils](src/utils)

Here is the infrastructure code to create the supabase clients, to create a pagination and other code that did not
fit into other directories.

### [testutils](src/testutils)

Utility functions for tests are here. They are deleted before the production build is created in the Dockerfile.

### [styles](src/styles)

We use [Chakra UI](https://chakra-ui.com/) as design framework. Chakra UI provides attributes to style the components.
The initial template used external css files. These are styles we did not migrate yet to the Chakra UI way of styling.

### [assets](src/assets)

Here are images used in our application.

### [supabase](supabase)

This directory configures the development setup for supabase.
It contains a config.toml which is a configuration file for the supabase development setup.
In migrations the schema for the application is defined. We did not use multiple files for the migrations,
because neither with the development setup nor with LocalStack the data survives a restart of the application.
In [seed.sql](supabase/seed.sql) we have the seed data for our application that the developers don't have
to insert the data manually after each start. The schema and the seed data is also copied into the productive
build of the [supabase](../supabase) service and used there.

## Testing

This project has the goal to test all the logic with automated tests.
There are 3 test levels that are currently supported with [cypress.io](https://www.cypress.io/).

### Unit tests

These tests are for functions or for the stores. The goal is to test the logic in isolation with as little
setup as possible. Examples are [shoppingCartStore.cy.ts](src/store/shoppingCartStore.cy.ts) and [parseRedirectUrl.cy.ts](src/utils/parseRedirectUrl.cy.ts).  
They are run with the cypress component tests with the command `npm run cypress-run-components`.  
To develop them, you can open cypress with `npm run cypress` and then choose the component tests.

### Component tests

To test the rendering of a single component, component tests are used. They are similar to Unit tests, but
instead of just testing a function or an object, they mount a react component, render it and assert
properties. Examples are [CardRarityLabel.cy.tsx](src/components/CardRarityLabel.cy.tsx) and [Pagination.cy.tsx](src/components/Pagination.cy.tsx).  
They are run with the cypress component tests with the command `npm run cypress-run-components`.  
To develop them, you can open cypress with `npm run cypress` and then choose the component tests.

### End to End tests

These tests test the whole application with supabase running. They are located in [e2e](cypress/e2e).
They idea is that for each feature, there is an e2e test which tests this feature.
It is also not possible to tests pages in component tests. If there is logic in a page, this logic can only be tested in
e2e tests.
To run these tests the setup must have been started first, see "Getting Started".  
They are run with the cypress component tests with the command `npm run cypress-run`.  
To develop them, you can open cypress with `npm run cypress` and then choose the e2e tests.
