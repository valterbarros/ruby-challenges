#Algoritimo histograma para descobrir quantas vezes determinada palavra se repete
puts "Entre com o Texto"
text = gets.chomp

words = text.split(" ") #Quebra a string em um array
frequencies = Hash.new(0) #inicializando o Hash com valor padrão 0 no construtor
words.each { |word| frequencies[word] += 1  } #Percorre o array words e salva nome => quantidade dentro do array frequencie
frequencies = frequencies.sort_by {|a, b| b } #Ordena pelo número
frequencies.reverse! #Ordem reversa para ficar do maior para o menor
frequencies.each { |word, frequency| puts word + " " + frequency.to_s  } #Percorre e imprimi os valores separado

