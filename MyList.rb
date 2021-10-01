require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*array)
    @array = array #[1,2,3,4]
  end

  def each
    i = 0
    while @array[i]  #while this is true (exist) do it ...
      yield
      i += 1
    end
  end
end

list = MyList.new(1,2,3,4)