class Mat
def verprimo(num)

    num = num.to_i

      if (num < 2)
          puts "numero deve ser maior que 1"
          exit
      end

         raiz = Math.sqrt(num)
         raiz = raiz.to_i + 1
         ret = true

         puts num

         for ct in (2..raiz)
            if (num % ct == 0 && num != ct)
               ret = false
               break
            end
         end

         return ret
end
end
#------------------------------

 @mat = Mat.new

 if @mat.verprimo(102756431)
     puts "Este número é primo"
 else
     puts "Este número não é primo"
 end


 if @mat.verprimo(65537)
     puts "Este número é primo"
 else
     puts "Este número não é primo"
 end

 if @mat.verprimo(6)
     puts "Este número é primo"
 else
     puts "Este número não é primo"
 end

 if @mat.verprimo(13)
     puts "Este número é primo"
 else
     puts "Este número não é primo"
 end
