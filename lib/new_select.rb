class Array
  def new_select
    array = Array.new
    for i in 0..self.length-1 do
      array << self[i] if yield(self[i])
    end
    array
  end
end
