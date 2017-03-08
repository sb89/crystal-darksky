require "./spec_helper"

describe Darksky::Language do
  describe "text()" do
    it "should convert to lower case" do
      Darksky::Language::DE.text.should eq("de")
    end

    it "should handle X_PIG_LATIN correctly" do
      Darksky::Language::X_PIG_LATIN.text.should eq("x-pig-latin")
    end

    it "should handle ZH_TW correctly" do
      Darksky::Language::ZH_TW.text.should eq("zh-tw")
    end
  end
end

describe Darksky::Blocks do
  describe "text()" do
    it "should convert to lower case" do
      Darksky::Blocks::Currently.text.should eq("currently")
    end
  end
end

describe Darksky::Units do
  describe "text()" do
    it "should convert to lower case" do
      Darksky::Units::UK2.text.should eq("uk2")
    end
  end
end