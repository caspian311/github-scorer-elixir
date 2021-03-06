defmodule GithubScorer.Mixfile do
  use Mix.Project

  def project do
    [app: :github_scorer,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpotion]]
  end

  defp deps do
    [
      {:httpotion, "~> 3.0.2"},
      {:jsx, "~> 2.8.0"}
    ]
  end
end
