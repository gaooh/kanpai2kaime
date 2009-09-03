require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tabelog, "API情報を保存する:" do
  fixtures :tabelogs

  before(:each) do
    @tabelog = Tabelog.find(:all)
    @tabelog.size.should equal(0) # 事前条件まだ0件
  end

  it "正常に保存される" do
    @tabelog_apis = TabelogAPI.find(:all, :params => {:Datum => "tokyo", :ResultSet => 'large'})
    Tabelog.save_from_api(@tabelog_apis)
    
    @tabelog = Tabelog.find(:all)
    @tabelog.size.should equal(20)
  end
end
