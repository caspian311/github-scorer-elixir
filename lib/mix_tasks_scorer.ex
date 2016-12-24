defmodule Mix.Tasks.Scorer do
  use Mix.Task

  def run(_args) do
    Mix.shell.info "Running the scorer..."

    scores = ["caspian311", "sgnn7", "podung", "gdeer81"]
      |> Enum.map(&(GithubScorer.score(&1)))
      |> Enum.join(" ")

    Mix.shell.info "Scores are: " <> scores
  end
end
