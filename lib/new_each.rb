class Array
  def new_each
    for i in 0..self.length-1 do
      yield(self[i])
    end
    self
  end
end
