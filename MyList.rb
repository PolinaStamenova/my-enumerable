require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*array)
    @array = array
  end

  def each
    i = 0
    while @array[i]
      yield
      i += 1
    end
  end
end

list = MyList.new(1,2,3,4)