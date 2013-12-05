require 'map_'

describe Array do

 # include Array

  it "should be recognised by the Array class" do
    Array.respond_to?(:map_).should be_true
  end


end
