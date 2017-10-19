class DisjointSet
  attr_reader :parent, :rank, :size

  def initialize(ids = [])
    @parent, @rank, @size = {}, {}, {}
    ids.each do |id|
      @parent[id] = id
      @rank[id] = 0
      @size[id] = 1
    end
  end

  def make_set(x)
    @parent[x] = x
    @rank[x] = 0
  end

  def find(x)
    return x if (@parent[x] == x)
    @parent[x] = find(@parent[x])
    @parent[x]
  end

  def union(x, y)
    x, y = find(x), find(y)
    rank_x, rank_y = @rank[x], @rank[y]

    return if (x == y)
    
    if (size[x] < size[y])
      @parent[x] = y
      size[y] += size[x]
    else
      @parent[y] = x
      size[x] += size[y]
    end
  end

  def same?(x, y)
    find(x) == find(y)
  end
end


n,q = gets.strip.split(' ').map(&:to_i)
arr = []
n.times{|e| arr << e+1}
@dj = DisjointSet.new(arr)

#begin
q.to_i.times do
  ch, args = gets.strip.split(' ', 2)
  if ch == 'Q'
    n = args.to_i
    puts @dj.size[@dj.find(n)]
  elsif ch == 'M'
    n, m = args.split.map { |s| s.to_i }
    @dj.union n,m
  end
end
