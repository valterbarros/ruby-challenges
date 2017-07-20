#run tests only from your new branch

#TODO
#Checkout to main branch dynamically
#Checkout to your branch with tests dynamically

spec_files = `git diff --name-only hotfix/\#5224857-dont-apear-mensage-that-have-contract | grep .spec`.split /\n/
spec_files.each {|t| "#{rspec t}"}
tests = spec_files.map {|t| "rspec #{t}"}
tests.each{|test| system "#{test}"}
