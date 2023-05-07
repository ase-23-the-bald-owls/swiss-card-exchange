# Swiss Card Exchange

This is a student project developed by @BacLuc and @Off3line.  
The goal of the courses project is to create a cloud native e-commerce application.  
[Course page of Advanced Software Engineering @UZH](https://www.ifi.uzh.ch/en/seal/teaching/courses/ase.html)

## Github Badges:

[![CI](https://github.com/ase-23-the-bald-owls/swiss-card-exchange/actions/workflows/ci.yml/badge.svg)](https://github.com/ase-23-the-bald-owls/swiss-card-exchange/actions/workflows/ci.yml)
[![CD](https://github.com/ase-23-the-bald-owls/swiss-card-exchange/actions/workflows/cd.yml/badge.svg)](https://github.com/ase-23-the-bald-owls/swiss-card-exchange/actions/workflows/cd.yml)
[![Development setup](https://github.com/ase-23-the-bald-owls/swiss-card-exchange/actions/workflows/development-setup.yml/badge.svg)](https://github.com/ase-23-the-bald-owls/swiss-card-exchange/actions/workflows/development-setup.yml)

## SonarCloud Badges:

[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=ase-23-the-bald-owls_swiss-card-exchange&metric=bugs)](https://sonarcloud.io/summary/new_code?id=ase-23-the-bald-owls_swiss-card-exchange)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=ase-23-the-bald-owls_swiss-card-exchange&metric=code_smells)](https://sonarcloud.io/summary/new_code?id=ase-23-the-bald-owls_swiss-card-exchange)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=ase-23-the-bald-owls_swiss-card-exchange&metric=coverage)](https://sonarcloud.io/summary/new_code?id=ase-23-the-bald-owls_swiss-card-exchange)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=ase-23-the-bald-owls_swiss-card-exchange&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=ase-23-the-bald-owls_swiss-card-exchange)

## Architecture

The application consist of 3 deployment units.

1. [app](app): A [NEXT.js](https://nextjs.org/) application which is the frontend of the WebShop.  
   Next.js allows to
   use [SSR](https://nextjs.org/docs/pages/building-your-application/rendering/server-side-rendering "Server Side Rendering")
   which improves [SEO](https://en.wikipedia.org/wiki/Search_engine_optimization "Search engine optimization") because
   web crawlers of search engines can parse the content without executing javascript.

2. [supabase](supabase): A container deployed with its terraform module to localstack.  
   It is [supabase](https://supabase.com/) self hosted with a [docker-compose.yml](supabase/app/docker-compose.yml)
   file.
   The container defined with the [Dockerfile](supabase/Dockerfile) coordinates the start of
   the [docker-compose.yml](supabase/app/docker-compose.yml) file.  
   Supabase offers [BaaS](https://en.wikipedia.org/wiki/Backend_as_a_service_(computing) "Backend as a service") which
   allows you to define a backend api
   by just defining a database [schema](app/supabase/migrations/20230315000000_create_schema.sql) with SQL. Supabase
   then analyzes this schema and
   allows to interact with the backend via [client SDK](https://supabase.com/docs/reference/javascript/insert)
   and [REST](openapi-docs.yml "OpenApi Spec").  
   The openapi specification can also be seen
   here: <https://app.swaggerhub.com/apis/LUCIUSBACHMANN/swiss-card-exchange/1>

3. [mail-function](mail-function): a [nodejs](https://nodejs.org/en) application to confirm orders via email to the
   customers.
   This is a dedicated service because this offers the retry without any additional effort, and the notification of the
   customers
   via email must be very reliable. The mail-function only needs to interact with supabase, thus it can easily be moved
   to a separate service.

![architecture](docs/components/components.png "Architecture")

These deployment units are then deployed to [localstack](https://localstack.cloud/). How these
units are deployed is described with [TerraFrom](https://www.terraform.io/).

Because it would be difficult to send emails to real mailboxes and the deployment target is localstack,
the mail-function sends the emails to [MailHog](https://github.com/mailhog/MailHog). The deployment of
MailHog is defined in the top level [docker-compose.yml](docker-compose.yml) under the service mail.

## Local development

For local development, the local development environment with the supabase-cli is recommended.
See [app](app)

## Local deployment

To quickly build and test the docker images, a [docker-compose](docker-compose.yml) file is in the
root directory.
Start the deployment with:

```shell
docker compose --profile local-run up
```

Sadly the supabase containers are not stopped when stopping the supabase-dc service.
To stop them, run:

```shell
docker compose -f supabase/app/docker-compose.yml down
```

## Deployment on localstack

### Setup

To deploy to the localstack docker compose service, you need the following tools:

- terraform [Link to install instructions](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- tflocal [link to install instructions](https://github.com/localstack/terraform-local)

And you need the following entries in your hosts file.
(/etc/hosts in linux, C:\Windows\System32\drivers\etc\hosts on windows)

```
127.0.0.1 s3.localhost.localstack.cloud
127.0.0.1 supabase.s3.localhost.localstack.cloud
127.0.0.1 supabase.local
```

Then download the providers used by terraform: `tflocal init`

### Deploy

1. Start the localstack container: `docker compose up -d`
2. Refresh the terraform state: `tflocal refresh`
3. Apply the changes: `tflocal apply --auto-approve`

Then, supabase should be reachable under [http://localhost:3000](http://localhost:3000)
sce-app is reachable under [http://localhost:8080](http://localhost:8080)

### Cleanup

1. Destroy the resources of terraform: `tflocal destroy --auto-approve`
2. Shut down the containers: `docker compose -f supabase/app/docker-compose.yml down`
3. Shut down localstack: `docker compose down`
