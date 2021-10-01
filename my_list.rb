require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    i = 0
    while @list[i]
      yield
      i += 1
    end
  end
end
