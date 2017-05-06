date_pattern_regexp = /[sáb|[a-z]]{3}, [0-9]{2} [a-z]{3} [0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} ([a-z]{4}|[a-z]{3}) -[0-9]{2}:[0-9]{2}/i
id_pattern_regexp = /(:id) => [0-9]+,/
guid_pattern_regexp = /[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+/

def generate_guid
  number = Random.new.rand(100)	
  "0956eb88-e869-4512-93fd-#{number}a8c20a6#{number}605"
end

File.open("./obra\ new.txt") do |file|
  file.each_line do |line|
    change_date = line.gsub(date_pattern_regexp, "Time.now")
    change_guid = change_date.gsub(guid_pattern_regexp, "#{generate_guid}")    
    remove_id = change_guid.gsub(id_pattern_regexp, "")
    remove_enter = remove_id.gsub(/\n/,"")
    final_string = remove_enter.gsub(" ", "")
    print final_string
  end  
end




