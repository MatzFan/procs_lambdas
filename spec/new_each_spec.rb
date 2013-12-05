require 'new_each'

describe Array do
  context '#new_each' do

    let(:array) { [1,2,3] }

    it "should be recognised by the Array class" do
      array.respond_to?(:new_each).should be_true
    end

    it "should not mutate the array" do
      original = array
      array.new_each {}
      array.should equal(array)
    end

    it "should return the array it is called on" do
      array.new_each{}.should == array
    end

    it "should have to take a block arg" do
      lambda { array.new_each }.should raise_error(LocalJumpError)
    end

    it "should operate on the elements according to the block arg" do
      a = []
      array.new_map { |n| a << n * 2 }
      a.should == [2,4,6]
    end
  end # of context
end # of describe
