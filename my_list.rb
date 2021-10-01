require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    i = 0
    while @list[i]
      yield @list[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
p list
p list.filter {|e| e.even?}