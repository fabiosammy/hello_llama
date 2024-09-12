require 'httparty'
require 'json'

class OllamaAPI
  DEFAULT_MODEL = "llama3.1:8b"

  def initialize(host: 'localhost', port: 11434)
    @host = host
    @port = port
    @api_url = "http://#{@host}:#{@port}"
  end

  # https://github.com/ollama/ollama/blob/main/docs/api.md#generate-a-completion
  def ask(prompt:, model: DEFAULT_MODEL, stream: false)
    params = {
      model: model,
      prompt: prompt,
      stream: stream
    }
    HTTParty.post(
      @api_url + "/api/generate",
      headers: { 'Content-Type' => 'application/json' },
      body: params.to_json
    )
  end

  def list_models
    HTTParty.get(@api_url + "/api/tags")
  end

  def running_models
    HTTParty.get(@api_url + "/api/ps")
  end
end
