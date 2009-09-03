require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TabelogAPI,  "東京都のレストラン情報を取得する:" do
  before(:each) do
  end

  it "should be valid" do
    @tabelogs = TabelogAPI.find(:all, :params => {:Datum => "tokyo"})
    @tabelogs.should_not be_nil
  end
end

describe TabelogAPI,  "緯度経度を指定してのレストラン情報を取得する:" do
  before(:each) do
  end

  it "should be valid" do
    @tabelogs = TabelogAPI.find(:all, :params => {:Latitude => "35.684", :Longitude => "139.756"})
    @tabelogs.should_not be_nil
  end
end

describe TabelogAPI,  "東京都のレストラン情報を5件取得する:" do
  before(:each) do
  end

  it "should be valid" do
    @tabelogs = TabelogAPI.find_by_datum("tokyo", 1, 5)
    @tabelogs.should_not be_nil
    @tabelogs.size.should eql(5)
  end
end