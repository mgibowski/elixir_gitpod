defmodule ElixirGitpodTest do
  use ExUnit.Case

  test "passes" do
    assert ElixirGitpod.hello() == :world
  end

  test "fails" do
    assert ElixirGitpod.bye() == :bye
  end
end
