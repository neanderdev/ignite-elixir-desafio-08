defmodule QueuesChallenge.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {QueuesChallenge, [1, 2, 3]}
    ]

    opts = [strategy: :one_for_one, name: QueuesChallenge.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
