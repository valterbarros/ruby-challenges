class Computer
    def initialize(username, password) #construtor recebendo username and password
        @username = username #Set variables
        @password = password #Set variables
        @files = Hash.new #Initialize Hash
        @@users[username] = password #storing in hash on key username your password
        @@users = Hash.new #initialize Hash
    end
    
    def create(filename) #Create Arquivo
        time = Time.now #Get time actual
        files[filename] = time #storing in hash on  key filename your creation time
        puts "Um novo arquivo foi criado! Arquivo #{filename}, #{username}, #{time}"
    end
    
    def Computer.get_users #Class method 
        return @@users #return class variable
    end
end

my_computer = Computer.new("thevalter","123456")  #instantiating
