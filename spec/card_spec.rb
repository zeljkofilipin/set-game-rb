require_relative "../lib/card"
describe SetGame::Card do
  it "creates card from string" do
    string = "three purple solid squiggles"
    card = {:count=>"three", :color=>"purple", :fill=>"solid", :shape=>"squiggles"}
    SetGame::Card.card(string).should == card
  end
end
