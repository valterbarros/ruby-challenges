class Creature
  def initialize(nome)
    @nome = nome
  end

  def prints
    puts @nome
  end
end

class Monstro < Creature
  def initialize(nome)
    super
  end
end

m = Monstro.new("valter")
m.prints
