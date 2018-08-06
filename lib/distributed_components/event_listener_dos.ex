defmodule DistributedComponents.EventListenerDos do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(args) do
    {:ok, args}
  end

  def process(event_shadow) do
    GenServer.cast(__MODULE__, event_shadow)
    :ok
  end

  def handle_cast({:goodbye, _id} = event_shadow, state) do
    event = EventBus.fetch_event(event_shadow)
    EventBus.mark_as_completed({__MODULE__, event_shadow})
    {:noreply, state}
  end
end
