defmodule FizzBuzz do
  def fizzbuzz(n) do
    cond do
      rem(n, 15) == 0 -> "FizzBuzz"
      rem(n, 3) == 0 -> "Fizz"
      rem(n, 5) == 0 -> "Buzz"
      true -> n |> to_string
    end
  end

  def run(limit) do
    Enum.each(1..limit, fn i ->
      IO.puts(fizzbuzz(i))
    end)
  end
end

defmodule PipedFizzBuzz do
  def fizzbuzz(n) do
    cond do
      rem(n, 15) == 0 -> "FizzBuzz"
      rem(n, 3) == 0 -> "Fizz"
      rem(n, 5) == 0 -> "Buzz"
      true -> n
    end
  end

  def run(limit) do
    1..limit |> Enum.each(fn i -> i |> fizzbuzz |> IO.puts() end)
  end
end
