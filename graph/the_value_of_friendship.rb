# https://www.hackerrank.com/challenges/value-of-friendship/problem

$group_management = []

class CalculateValue
    attr_reader :totalValueOfFriendship
    
    def initialize(friendshipsLookupTable)
        @friendshipsLookupTable = friendshipsLookupTable
        @additionalLinks = 0
        @totalValueOfFriendship = 0
        @totalFriends = 0
    end
    
    def calcValue(object)
      object[:nodes].sort.reverse.each do |node|
        node = node - 1
        #puts "node: #{node}"
        lookupValue = @friendshipsLookupTable[node]
        @totalValueOfFriendship += lookupValue + @totalFriends * (node)
       
        @totalFriends += node * (node + 1)
      end
     
      @additionalLinks = object[:additional_links] || 0
      @totalValueOfFriendship += @totalFriends * @additionalLinks
    end
end

class DisjointSet
  attr_reader :parent, :size, :additional_links

  def initialize(ids = [])
    @parent, @additional_links, @size = {}, {}, {}, {}
    ids.each do |id|
      @parent[id] = id
      @size[id] = 1
      @additional_links[id] = 0
    end
  end

  def make_set(x)
    @parent[x] = x
    @rank[x] = 0
  end
  
  def return_group
    $group_management << { 
      nodes: @size.select{|k,v| v > 1}.values, 
      additional_links: @additional_links.select{|k,v| v > 0}.values.inject(&:+) 
    }
  end

  def find(x)
    return x if (@parent[x] == x)
    @parent[x] = find(@parent[x])
    @parent[x]
  end

  def union(x, y)
    x, y = find(x), find(y)

    if (x == y)
      additional_links[x] += 1 
      return
    end
    
    if (size[x] < size[y])
      @parent[x] = y
      size[y] += size[x]
      size[x] = 1 #re init size before merge sizes y += x
    else
      @parent[y] = x
      size[x] += size[y]
      #puts "size x: #{size[x]} size y: #{size[y]}"
      size[y] = 1 #re init size before merge sizes x += y
    end
  end

  def same?(x, y)
    find(x) == find(y)
  end
end


t = gets.strip.to_i
for a0 in (0..t-1)
    n,m = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    disjoint_set = DisjointSet.new((1..n).to_a)

    for a1 in (0..m-1)
        x,y = gets.strip.split(' ')
        x = x.to_i
        y = y.to_i
        disjoint_set.union(x, y)
    end
    disjoint_set.return_group
end

friendshipsLookupTable = []

valueOfFriendship = 0

FRIENDSHIPS_MAXIMUM = 200000;

for i in 1..FRIENDSHIPS_MAXIMUM 
    valueOfFriendship += i * (i+1)
    friendshipsLookupTable[i] = valueOfFriendship
end

$group_management.each do |group| 
  cv = CalculateValue.new(friendshipsLookupTable) 
  cv.calcValue(group) 
  puts cv.totalValueOfFriendship
end
