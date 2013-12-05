class Array
  def new_map
    array = Array.new
    for i in 0..self.length-1 do
      array << yield(self[i])
    end
    array
  end
end

# [1,2].new_map
