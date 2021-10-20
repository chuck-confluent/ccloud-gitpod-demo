# Overview

Produce messages to and consume messages from a Kafka cluster using the Java Producer and Consumer, and Kafka Streams API.


# Documentation

You can find the documentation and instructions for running this Java example at [https://docs.confluent.io/platform/current/tutorials/examples/clients/docs/java.html](https://docs.confluent.io/platform/current/tutorials/examples/clients/docs/java.html?utm_source=github&utm_medium=demo&utm_campaign=ch.examples_type.community_content.clients-ccloud)

# Run in Gitpod

1. Create a Confuent Cloud account at https://confluent.cloud, create a cluster, and then create a schema registry.
2. Create a API keys for your cluster and schema registry.
3. Finally, make sure these environment variables are set at https://gitpod.io/variables and scoped to this repository
  - `CCLOUD_EMAIL` (for the `ccloud` CLI)
  - `CCLOUD_PASSWORD` (for the `ccloud` CLI)
  - `CCLOUD_ENV_ID` (to choose a specific environment for the `ccloud` CLI)
  - `CCLOUD_API_KEY`
  - `CCLOUD_API_SECRET`
  - `CCLOUD_BOOTSTRAP_SERVER` (includes kafka port)
  - `CCLOUD_SR_URL`
  - `CCLOUD_SR_API_KEY`
  - `CCLOUD_SR_API_SECRET`

Now you can run your clients in YOUR OWN Confluent Cloud cluster with Gitpod! Enjoy!

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/chuck-confluent/ccloud-gitpod-demo)

# Video Demonstration


[![video demo of confluent cloud based labs using gitpod](https://img.youtube.com/vi/3sy05KH94_0/0.jpg)](https://youtu.be/3sy05KH94_0)
