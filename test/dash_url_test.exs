defmodule DashUrlTest do
  use ExUnit.Case
  doctest DashUrl

  test "Elixir url" do
    assert DashUrl.url(Atom) == "dash://elixir:Atom"
    assert DashUrl.url(Atom, :to_string) == "dash://elixir:Atom.to_string"
    assert DashUrl.url(Atom, :to_string, 1) == "dash://elixir:Atom.to_string"
  end

  test "Erlang url" do
    assert DashUrl.url(:erlang) == "dash://erl:erlang"
    assert DashUrl.url(:erlang, :binary_to_integer) == "dash://erl:erlang:binary_to_integer"
    assert DashUrl.url(:erlang, :binary_to_integer, 1) == "dash://erl:erlang:binary_to_integer"
  end

end
