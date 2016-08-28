products = {"t-shirt" => 6, "legs" => 3, "skirt" => 10}
products = products.sort_by do |name, qtd|
  qtd
end

print products.reverse!



