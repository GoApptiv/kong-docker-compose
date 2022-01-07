# Kong in Docker Compose

This is the GoApptiv Docker Compose template for [Kong][kong-site-url] with lastest supported Postgres version and Nginx Load Balancer for Scaling.

## What is Kong?

You can find the official Docker distribution for Kong at [https://hub.docker.com/\_/kong](https://hub.docker.com/_/kong).

## How to use this template

This Docker Compose template provisions a Kong container with a Postgres database, plus a nginx load-balancer. After running the template, the `nginx-lb` load-balancer will be the entrypoint to Kong.

To run this template execute :

```bash
# for a single kong instance db-less stack
docker-compose up -d

# for a three kong instance db-less stack
docker-compose up --scale kong=3 -d

# for a two kong instance postgres stack
docker-compose --profile postgres up --scale kong=2 -d

# bring down the kong stack
docker-compose down
```

Kong will be available through the `nginx-lb` instance on port `8000`, and `8001`. You can customize the template with your own environment variables or datastore configuration.

Kong's documentation can be found at [https://docs.konghq.com/][kong-docs-url].

## Issues

If you have any problems with or questions about this image, please contact us through a GitHub issue.

## Credits

- [jf-delineate](https://github.com/jf-delineate) - Nginx Load Balancer
