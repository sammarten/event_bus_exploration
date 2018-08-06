#This is a simple implementation of Event Bus in Elixir**

## To Run

```elixir
mix deps.get

mix compile
```

Once compiled, run ```iex -S mix``` to start the application in a command shell.

At the command prompt, you can run these statements to send messages around the Event Bus.

```elixir
alias DistributedComponents.EventGenerator

EventGenerator.one()

EventGenerator.two()

EventGenerator.three()
```