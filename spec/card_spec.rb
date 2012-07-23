require_relative "../lib/card"
describe SetGame::Card do
  before :each do
    @strings =
      [
        "three purple solid squiggles",
        "two green shaded diamonds",
        "one red solid squiggle",
        "three green empty squiggles",
        "three red solid diamonds",
        "two purple shaded squiggles",
        "two red empty diamonds",
        "one purple empty squiggle",
        "three purple shaded ovals",
        "three red shaded ovals",
        "one green shaded oval",
        "one purple empty oval"
      ]
  end
  it "creates card from string" do
    string = @strings[0]
    card = {:count=>"three", :color=>"purple", :fill=>"solid", :shape=>"squiggles"}
    SetGame::Card.card(string).should == card
  end
  it "creates cards from strings" do
    cards =
      [
        {:count=>"three", :color=>"purple", :fill=>"solid", :shape=>"squiggles"},
        {:count=>"two", :color=>"green", :fill=>"shaded", :shape=>"diamonds"},
        {:count=>"one", :color=>"red", :fill=>"solid", :shape=>"squiggle"},
        {:count=>"three", :color=>"green", :fill=>"empty", :shape=>"squiggles"},
        {:count=>"three", :color=>"red", :fill=>"solid", :shape=>"diamonds"},
        {:count=>"two", :color=>"purple", :fill=>"shaded", :shape=>"squiggles"},
        {:count=>"two", :color=>"red", :fill=>"empty", :shape=>"diamonds"},
        {:count=>"one", :color=>"purple", :fill=>"empty", :shape=>"squiggle"},
        {:count=>"three", :color=>"purple", :fill=>"shaded", :shape=>"ovals"},
        {:count=>"three", :color=>"red", :fill=>"shaded", :shape=>"ovals"},
        {:count=>"one", :color=>"green", :fill=>"shaded", :shape=>"oval"},
        {:count=>"one", :color=>"purple", :fill=>"empty", :shape=>"oval"}
      ]

    SetGame::Card.cards(@strings).should == cards
  end
  it "returns any 220 combinations for 12 cards" do
    SetGame::Card.combinations(@strings).size.should == 220
  end
end
