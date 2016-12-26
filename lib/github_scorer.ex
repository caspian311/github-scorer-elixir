defmodule GithubScorer do
  def score(username) do
    GitHub.get("users/#{username}/events").body
        |> Enum.map(fn (item) -> Enum.into(item, %{}) end)
        |> Enum.map(fn (event) -> value(event["type"]) end)
        |> Enum.reduce(0, fn (num, acc) -> acc + num end)
  end

  def value(type) do
    case type do
      "CreateEvent" -> 3
      "PushEvent" -> 5
      "IssuesEvent" -> 3
      _ -> 1
    end
  end
end

