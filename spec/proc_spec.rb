require 'proc'

describe Array do

  my_proc = Proc.new { |e| 2 * e }

  it 'should be able to use map with a proc arg' do
    [1,2,3].map(&my_proc).should == [2,4,6]
  end

end # of describe
