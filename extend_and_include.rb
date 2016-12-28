module ThePresent
  def now
    puts "São #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  include ThePresent
end

#TheHereAnd.now
t = TheHereAnd.new
t.now
