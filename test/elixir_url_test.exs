defmodule ElixirUrlTest do
  use ExUnit.Case
  doctest ElixirUrl

  test "Elixir url" do
    assert ElixirUrl.url(Atom) == "http://elixir-lang.org/docs/stable/elixir/Atom.html"
    assert ElixirUrl.url(Atom, :to_string) == "http://elixir-lang.org/docs/stable/elixir/Atom.html#functions"
    assert ElixirUrl.url(Atom, :to_string, 1) == "http://elixir-lang.org/docs/stable/elixir/Atom.html#to_string/1"
  end

  test "Erlang url" do
    assert ElixirUrl.url(:erlang) == nil
    assert ElixirUrl.url(:erlang, :binary_to_integer) == nil
    assert ElixirUrl.url(:erlang, :binary_to_integer, 1) == nil
  end

end
