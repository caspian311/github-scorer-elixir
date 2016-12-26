defmodule GitHub do
  use HTTPotion.Base

  def process_url(url) do
    "https://api.github.com/#{url}?access_token=#{access_token}"
  end

  def process_request_headers(headers) do
    Dict.put headers, :"User-Agent", "github-potion"
  end

  def process_response_body(body) do
    body 
      |> IO.iodata_to_binary 
      |> :jsx.decode
  end

  def access_token do
    Application.get_env(:github_scorer, :access_token)
  end
end
