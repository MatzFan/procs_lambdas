require 'map_recursive'

describe Array do
  context '#map_recursive' do

    let(:array) { [1,2,3] }

    it "should be recognised by the Array class" do
      array.respond_to?(:map_recursive).should be_true
    end

    it "should not mutate the array" do
      original = array
      array.map_recursive {}
      array.should equal(array)
    end

    it "should return an array" do
      array.map_recursive{}.class.should == Array
    end

    it "should have to take a block arg" do
      lambda { array.map_recursive }.should raise_error(LocalJumpError)
    end

    it "should return the same number of elements as the array it is called on" do
      array.map_recursive{ 'a block' }.length.should == 3
    end

    it "should return an array with the elements modified by the block arg" do
      array.map_recursive { |n| n * 2 }.should == [2,4,6]
    end
  end # of context
end # of describe
