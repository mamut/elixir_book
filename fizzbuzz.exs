foo = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, x -> x
end

bar = fn n -> foo.(rem(n, 3), rem(n, 5), n) end

IO.puts bar.(10)
IO.puts bar.(11)
IO.puts bar.(12)
IO.puts bar.(13)
IO.puts bar.(14)
IO.puts bar.(15)
IO.puts bar.(16)
