# Requirements

* Tested on a laptop with an AMD GPU, the Radeon RX 6600M.
* At least 100GB of free space

# Installing

First, Spin up the services, ollama and open-webui:

```
$ docker compose up
```

Now, in a new terminal, connect to the ollama container, and then download the models that you need, we recommend the combination below:

```
$ docker compose exec ollama bash
$ ollama pull llama3.1:8b
$ ollama pull starcoder2:3b
$ ollama pull nomic-embed-text:v1.5
```

Then, go to http://localhost:8080 and setup your account and then start using ollama.

# Troubleshooting

* you can check the files on https://github.com/open-webui/open-webui to see if anythings there help you own setup

# TODO:

* This is still a specific setup to a machine that is using an AMD GPU, the Radeon RX 6600M.
* Create a script to generate a docker compose based on the host's hardware.

