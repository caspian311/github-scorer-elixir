defmodule Mix.Tasks.Scorer do
  use Mix.Task

  def run(_args) do
    Mix.shell.info "Running the scorer..."

    HTTPotion.start
    scores = ["caspian311", "sgnn7", "podung", "gdeer81"]
      |> Enum.map(fn(username) -> "#{username}: #{GithubScorer.score(username)}" end)
      |> Enum.join(", ")

    Mix.shell.info "Scores are: " <> scores
  end
end
