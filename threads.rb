#!/usr/bin/ruby
def valid=(var)
	var
end

def valid
	valid
end

def func1
   while valid
      puts "func1 at: #{Time.now} isValid? #{isValid?}"
      sleep(2)
   end
end

def func2
   j=0
   while j<=2
      puts "func2 at: #{Time.now} isValid? #{isValid?}"
      j=j+1
      valid=(false)
      sleep(1)
      binding.pry
   end
end

puts "Started At #{Time.now}"
t1=Thread.new{func1()}
t2=Thread.new{func2()}
t1.join
t2.join
puts "End at #{Time.now}"