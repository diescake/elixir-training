defmodule Pipe do
  def q1 do
    # to_string(1)
    1 |> to_string
  end

  def q2 do
    # fun(pragmatic(concurrent(functional)))
    # functional |> concurrent |> pragmatic |> fun
  end

  def q3 do
    # Enum.each(1..5, fn i -> IO.puts(i) end)
    1..5 |> Enum.each(fn i -> IO.puts(i) end)
  end
end
