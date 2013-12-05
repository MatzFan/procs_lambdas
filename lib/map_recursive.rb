class Array
  def map_recursive &block
    copy_array, output_array = self.dup, []
    loopy(copy_array, output_array, &block)
    output_array
  end
end

def loopy(copy_array = [], output_array, &block)
  return output_array if copy_array == []
  output_array << yield(copy_array.shift)
  loopy(copy_array, output_array, &block)
end

# a = [1,2,3,5,7,3].map_recursive {|n| n * 2}
# p a
