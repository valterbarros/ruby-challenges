pais = "Brazil"
diasUteis = ['Segunda','Terca','Quarta','Quinta','Sexta']
time = Time.new
puts time.day
if((time.day == 8 && time.month == 9) && pais == "Brazil")
  diasUteis.delete_at(2)
  if(time.wday == "Wednesday")
    diasUteis.delete_at(3)
  end
  print "Independencia do Brazil"
end
