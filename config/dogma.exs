use Mix.Config
alias Dogma.Rule

config :dogma,
  rule_set: Dogma.RuleSet.All,
  exclude: [~r(\Alib/ap_api/tasks.ex)],
  override: [
    %Rule.LineLength{ max_length: 120 },
  ],
  exclude: [
    ~r(\Adeps/),
  ]
