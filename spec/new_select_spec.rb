require 'new_select'

describe Array do
  context '#new_select' do

    let(:array) { [1,2,3] }

    it "should be recognised by the Array class" do
      array.respond_to?(:new_select).should be_true
    end

    it "should not mutate the array" do
      original = array
      array.new_select {}
      array.should equal(array)
    end

    it "should return an array" do
      array.new_select{}.class.should == Array
    end

    it "should have to take a block arg" do
      lambda { array.new_select }.should raise_error(LocalJumpError)
    end

    it "should return an array with the elements selected by the block conditional" do
      array.new_select { |n| n.odd? }.should == [1,3]
    end
  end # of context
end # of describe
