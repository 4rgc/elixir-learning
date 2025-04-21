list = [1, 2, 3]

[a, b, c] = [1, 2, 3]

[a, b, c] = [1, 1, 1]

case Enum.at(list, 2) do
  1 -> IO.puts("This won't print")
  3 -> IO.puts("This will print")
  _ -> "Catch all"
end
