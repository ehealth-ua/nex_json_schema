defmodule NExJsonSchema.Mixfile do
  use Mix.Project

  @version "0.8.6"

  def project do
    [
      app: :nex_json_schema2,
      version: @version,
      elixir: "~> 1.0",
      description: "A JSON Schema validator without circulae deps support.",
      deps: deps(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test]
    ]
  end

  def application do
    [extra_applications: [:ssl]]
  end

  defp deps do
    [
      {:httpoison, "~> 1.5", only: :test},
      {:jason, "~> 1.3.0", only: [:dev, :test]},
      {:decimal, "~> 2.0"},
      {:excoveralls, "~> 0.14.2", only: [:dev, :test]},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:credo, "~> 1.6.1", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      files: ~w(lib mix.exs README.md LICENSE),
      maintainers: ["Namdak Tonpa", "ЕСОЗ"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ehealth-ua/nex_json_schema"}
    ]
  end
end
