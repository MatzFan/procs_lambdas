require 'new_map'

describe Array do
  context '#new_map' do

    let(:array) { [1,2,3] }

    it "should be recognised by the Array class" do
      array.respond_to?(:new_map).should be_true
    end

    it "should not mutate the array" do
      original = array
      array.new_map {}
      array.should equal(array)
    end

    it "should return an array" do
      array.new_map{}.class.should == Array
    end

    it "should have to take a block arg" do
      lambda { array.new_map }.should raise_error(LocalJumpError)
    end

    it "should return the same number of elements as the array it is called on" do
      array.new_map{ 'a block' }.length.should == 3
    end

    it "should return an array with the elements modified by the block arg" do
      array.new_map { |n| n * 2 }.should == [2,4,6]
    end
  end # of context
end # of describe
