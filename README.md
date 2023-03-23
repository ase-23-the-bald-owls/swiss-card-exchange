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

TBD
