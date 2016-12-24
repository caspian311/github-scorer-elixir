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
    [applications: [:logger]]
  end

  defp deps do
    [
      {:detergent, git: "https://github.com/devinus/detergent.git", tag: "0.3.0"}
    ]
  end
end
