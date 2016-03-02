prefix = fn prefix -> (fn text -> "#{ prefix } #{ text }" end) end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
