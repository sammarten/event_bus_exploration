use Mix.Config

config :event_bus, 
  topics: [:hello, :goodbye, :yolo], # list of atoms
  ttl: 30_000_000, # integer
  time_unit: :micro_seconds, # atom
  id_generator: EventBus.Util.Base62 # module: must implement 'unique_id/0' function
