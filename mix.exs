defmodule EctoFixtures.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_fixtures,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     deps: deps(),
     package: package()
     ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do [
    {:poison, "~> 2.0"},
    {:faker, "~> 0.7.0"},
    {:timex, "~> 3.0"},
    {:benchfella, "~> 0.3", only: [:dev, :test]},
    {:ex_doc, ">= 0.0.0", only: :dev},
    {:dogma, "~> 0.1", only: :dev},
    {:credo, "~> 0.4", only: [:dev, :test]}]
  end

  defp description do
    """
    Generates :map or JSON fixture from Ecto.Schema. It's useful for tests
    """
  end

  defp package do
    [
     name: :ecto_fixtures,
     files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
     maintainers: ["Pavel Vesnin"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/Nebo15/ecto_fixtures"}]
  end
end
