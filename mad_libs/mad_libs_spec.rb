$:.push(".") 
require 'mad_libs'

describe "Mad Libs" do
  context "when there are no substitutions" do
    it "should ask receive a text" do
      mad_libs = Madlibs.new("this is just a text")
      mad_libs.result.should == "this is just a text"
    end

    it "should receive another text" do
      mad_libs = Madlibs.new("this is another text")
      mad_libs.result.should == "this is another text"
    end
  end

  context "retrieve all the things to ask" do
    it "should be able to extract xxx in between ((xxx))" do 
      mad_libs= Madlibs.new("This is a ((noun)) that is very ((adjective))! Don't you think? ")
      mad_libs.questions.should == ['noun', 'adjective']

    end
  end

end

