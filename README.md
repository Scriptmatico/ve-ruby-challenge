# README

## Installation
You need to install VS Dev Container Plugin to run the app, Use the plugin to open in dev container.

## Run application
Run `rails server`

## Test the API Endpoints

Create a metric
```bash
curl --location --request POST 'http://localhost:3000/metric/metric_1' \
--header 'Content-Type: application/json' \
--data-raw '{"value": 10}'
```

Delete a Metric:

```bash
curl --location --request DELETE 'http://localhost:3000/metric/metric_1'
```

Get Aggregated Metrics:

```bash
curl --location --request GET 'http://localhost:3000/metrics'
```


# Dependencies
http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/
https://github.com/neo4j-drivers/seabolt/releases/download/v1.7.4/seabolt-1.7.4-Linux-ubuntu-18.04.deb
https://github.com/neo4j-drivers/seabolt
https://github.com/neo4j-drivers/seabolt/releases
