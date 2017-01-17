require "open-uri"

open("http://farm1.static.flickr.com/92/218926700_ecedc5fef7_o.jpg") {|f|
   File.open("whatever_file.jpg","wb") do |file|
     file.puts f.read
   end
}
