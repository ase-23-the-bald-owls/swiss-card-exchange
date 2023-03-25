# Swiss Card Exchange

This is a student project developed by @BacLuc and @Off3line.  
The goal of the courses project is to create a cloud native e-commerce application.  
[Course page of Advanced Software Engineering @UZH](https://www.ifi.uzh.ch/en/seal/teaching/courses/ase.html)

## Stack

The app is a nextjs application with supabase for the persistence.

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
