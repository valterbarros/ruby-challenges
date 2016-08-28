#Lista de produtos adicionados ao carrinho
class SessionCarrinho
  def initialize
    @lista_produtos = Hash.new
    @lista_produtos = {"Macacao" => 9}
  end

  def get_lista
    @lista_produtos
  end

  def set_lista(lista)
    @lista_produtos = lista
  end
end

#Bean Produto
class Produtos
  @nome
  def initialize(nome)
    @nome = nome
  end
  
  def get_nome
    @nome
  end

  def set_nome(nome)
    @nome = nome
  end
end

#Model para adicionar produtos ao carrinho
class AdicionaProdutos
  @carrinho
  #Construtor recebe instancia de SessionCarrinho
  def initialize(carrinho)
    @carrinho = carrinho
  end

  #Metodo para inserir produtos no carrinho
  def insert(produto)
    lista = @carrinho.get_lista
    if lista[produto.get_nome] == nil
    	lista[produto.get_nome] = 1
    else
    	lista[produto.get_nome] += 1
    end	
    @carrinho.set_lista(lista)
  end
end

p1  = Produtos.new("blusa")
p2  = Produtos.new("calca")

car = SessionCarrinho.new
adc = AdicionaProdutos.new(car)
adc.insert(p1)

puts car.get_lista