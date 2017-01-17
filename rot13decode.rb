vals = ['Jul qvq gur puvpxra pebff gur ebnq?', 'Gb trg gb gur bgure fvqr!']
#message Jul, qvq gur puvpxra
def rot13(secret_messages)
  secret_messages.map { |word| decode_string(word) }
end

def decode_string(word)
  word.downcase.split('').map{|letter| 
    if letter.match(/[a-m]/)
    	(letter.ord + 13).chr #a 
    elsif letter.match(/[n-z]/)
      (letter.ord - 13).chr #a 
    else
    	letter
    end
  }.join('').capitalize  
end

print rot13(vals)