class Person
  # Defina sua variável de classe como 0 na linha 3
  @@people_count = 0

  def initialize(name)
    @name = name
    # Incremente sua variável de classe na linha 8
    @@people_count += 1
  end

  def self.number_of_instances
    # Retorne sua variável de classe na linha 13
    @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Número de instancias de Person: #{Person.number_of_instances}"
