defmodule ElixirUrl do
  @moduledoc """
  Create Elixir URL's for the documention callbacks.


  """

  @head  "http://elixir-lang.org/docs/stable/elixir/"

  #http://elixir-lang.org/docs/stable/elixir/Base.html
  def url(module) do
    case elixir?(module) do
      true -> @head<>trim(module)<>".html"
      _  ->  nil
    end
  end

  # No anchors w/o arity
  def url(module, _function) do
    case elixir?(module) do
      true -> @head<>trim(module)<>".html"<>"\#functions"
      _  -> nil
    end
  end

  #http://elixir-lang.org/docs/stable/elixir/Base.html#encode64/1
  def url(module, function, arity) do
     case elixir?(module) do
      true -> @head<>trim(module)<>".html"<>"\#"<>trim(function)<>"/"<>Integer.to_string(arity)
      _  ->  nil
    end

  end

  defp elixir?(module) do
    Atom.to_string(module) |>
    String.starts_with?("Elixir.")
  end

  defp trim(module) do
    Atom.to_string(module) |>
    String.replace( ~r/^Elixir./, "")
  end

end