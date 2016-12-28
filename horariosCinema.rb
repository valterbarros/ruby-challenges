objetos_agrupado = []
objeto_horarios = {
										segunda: "21:50", 
										terca:   "16:50", 
										quarta:  "15:50", 
										quinta:  "15:50",
										sexta:   "21:50",
										sabado:  "21:50",
										domingo: "14:50"
									}
tamanho_objeto_horarios = objeto_horarios.length
valores_de_horarios = objeto_horarios.map(&:last).uniq
numero_de_horarios_unificados = valores_de_horarios.length

for index_do_array in 0..numero_de_horarios_unificados - 1
  objetos_agrupado << objeto_horarios.select{|dias,horario| horario == valores_de_horarios[index_do_array]}
end

puts objetos_agrupado