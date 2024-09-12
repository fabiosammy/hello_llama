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

The llama model for chat, and the starcoder2 for autocomplete with the nomic-embed-text model for embeddings (an approach to reduce the complexity).

You can check more models here: [https://ollama.com/library](https://ollama.com/library)

Then, go to [http://localhost:8080](http://localhost:8080) and setup your account and then start using ollama after selecting the model on the list in the left upper corner.

Also, check the `continue-config.json` file in the root of this repo for more information about how to configure the continue extension.
A copy/paste should be enough.
You can grab more information about the continue integration with ollama [here](https://ollama.com/blog/continue-code-assistant)

# Troubleshooting

* you can check the files on [https://github.com/open-webui/open-webui](https://github.com/open-webui/open-webui) to see if anythings there help you own setup

# TODO:

* This is still a specific setup to a machine that is using an AMD GPU, the Radeon RX 6600M.
* Create a script to generate a docker compose based on the host's hardware.

