defmodule DistributedComponentsTest do
  use ExUnit.Case
  doctest DistributedComponents

  test "greets the world" do
    assert DistributedComponents.hello() == :world
  end
end
