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
    card = { count: "three", color: "purple", fill: "solid", shape: "squiggles" }
    SetGame::Card.card(string).should == card
  end
  it "creates cards from strings" do
    cards =
      [
        { count: "three", color: "purple", fill: "solid", shape: "squiggles" },
        { count: "two", color: "green", fill: "shaded", shape: "diamonds" },
        { count: "one", color: "red", fill: "solid", shape: "squiggle" },
        { count: "three", color: "green", fill: "empty", shape: "squiggles" },
        { count: "three", color: "red", fill: "solid", shape: "diamonds" },
        { count: "two", color: "purple", fill: "shaded", shape: "squiggles" },
        { count: "two", color: "red", fill: "empty", shape: "diamonds" },
        { count: "one", color: "purple", fill: "empty", shape: "squiggle" },
        { count: "three", color: "purple", fill: "shaded", shape: "ovals" },
        { count: "three", color: "red", fill: "shaded", shape: "ovals" },
        { count: "one", color: "green", fill: "shaded", shape: "oval" },
        { count: "one", color: "purple", fill: "empty", shape: "oval" }
      ]
    SetGame::Card.cards(@strings).should == cards
  end
  it "returns any 220 combinations for 12 cards" do
    SetGame::Card.combinations(@strings).size.should == 220
  end
  it "returns correct 220 combinations for 12 cards" do
    combinations =
      [["three purple solid squiggles",
        "two green shaded diamonds",
        "one red solid squiggle"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "three green empty squiggles"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "three red solid diamonds"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "two purple shaded squiggles"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "two red empty diamonds"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "one purple empty squiggle"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "three purple shaded ovals"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "two green shaded diamonds",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "three green empty squiggles"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "three red solid diamonds"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "two purple shaded squiggles"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "two red empty diamonds"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "one purple empty squiggle"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "three purple shaded ovals"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "one red solid squiggle",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "three red solid diamonds"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "two purple shaded squiggles"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "two red empty diamonds"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "one purple empty squiggle"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "three purple shaded ovals"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "three green empty squiggles",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "three red solid diamonds",
        "two purple shaded squiggles"],
       ["three purple solid squiggles",
        "three red solid diamonds",
        "two red empty diamonds"],
       ["three purple solid squiggles",
        "three red solid diamonds",
        "one purple empty squiggle"],
       ["three purple solid squiggles",
        "three red solid diamonds",
        "three purple shaded ovals"],
       ["three purple solid squiggles",
        "three red solid diamonds",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "three red solid diamonds",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "three red solid diamonds",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "two purple shaded squiggles",
        "two red empty diamonds"],
       ["three purple solid squiggles",
        "two purple shaded squiggles",
        "one purple empty squiggle"],
       ["three purple solid squiggles",
        "two purple shaded squiggles",
        "three purple shaded ovals"],
       ["three purple solid squiggles",
        "two purple shaded squiggles",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "two purple shaded squiggles",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "two purple shaded squiggles",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "two red empty diamonds",
        "one purple empty squiggle"],
       ["three purple solid squiggles",
        "two red empty diamonds",
        "three purple shaded ovals"],
       ["three purple solid squiggles",
        "two red empty diamonds",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "two red empty diamonds",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "two red empty diamonds",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "one purple empty squiggle",
        "three purple shaded ovals"],
       ["three purple solid squiggles",
        "one purple empty squiggle",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "one purple empty squiggle",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "one purple empty squiggle",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["three purple solid squiggles",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "three red shaded ovals",
        "one green shaded oval"],
       ["three purple solid squiggles",
        "three red shaded ovals",
        "one purple empty oval"],
       ["three purple solid squiggles",
        "one green shaded oval",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "three green empty squiggles"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "three red solid diamonds"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "two purple shaded squiggles"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "two red empty diamonds"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "one purple empty squiggle"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "three purple shaded ovals"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "three red shaded ovals"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "one red solid squiggle",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "three red solid diamonds"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "two purple shaded squiggles"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "two red empty diamonds"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "one purple empty squiggle"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "three purple shaded ovals"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "three red shaded ovals"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "three green empty squiggles",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "three red solid diamonds",
        "two purple shaded squiggles"],
       ["two green shaded diamonds",
        "three red solid diamonds",
        "two red empty diamonds"],
       ["two green shaded diamonds",
        "three red solid diamonds",
        "one purple empty squiggle"],
       ["two green shaded diamonds",
        "three red solid diamonds",
        "three purple shaded ovals"],
       ["two green shaded diamonds",
        "three red solid diamonds",
        "three red shaded ovals"],
       ["two green shaded diamonds",
        "three red solid diamonds",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "three red solid diamonds",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "two purple shaded squiggles",
        "two red empty diamonds"],
       ["two green shaded diamonds",
        "two purple shaded squiggles",
        "one purple empty squiggle"],
       ["two green shaded diamonds",
        "two purple shaded squiggles",
        "three purple shaded ovals"],
       ["two green shaded diamonds",
        "two purple shaded squiggles",
        "three red shaded ovals"],
       ["two green shaded diamonds",
        "two purple shaded squiggles",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "two purple shaded squiggles",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "two red empty diamonds",
        "one purple empty squiggle"],
       ["two green shaded diamonds",
        "two red empty diamonds",
        "three purple shaded ovals"],
       ["two green shaded diamonds",
        "two red empty diamonds",
        "three red shaded ovals"],
       ["two green shaded diamonds",
        "two red empty diamonds",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "two red empty diamonds",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "one purple empty squiggle",
        "three purple shaded ovals"],
       ["two green shaded diamonds",
        "one purple empty squiggle",
        "three red shaded ovals"],
       ["two green shaded diamonds",
        "one purple empty squiggle",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "one purple empty squiggle",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["two green shaded diamonds",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "three red shaded ovals",
        "one green shaded oval"],
       ["two green shaded diamonds",
        "three red shaded ovals",
        "one purple empty oval"],
       ["two green shaded diamonds",
        "one green shaded oval",
        "one purple empty oval"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "three red solid diamonds"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "two purple shaded squiggles"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "two red empty diamonds"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "one purple empty squiggle"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "three purple shaded ovals"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "three red shaded ovals"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "one green shaded oval"],
       ["one red solid squiggle",
        "three green empty squiggles",
        "one purple empty oval"],
       ["one red solid squiggle",
        "three red solid diamonds",
        "two purple shaded squiggles"],
       ["one red solid squiggle",
        "three red solid diamonds",
        "two red empty diamonds"],
       ["one red solid squiggle",
        "three red solid diamonds",
        "one purple empty squiggle"],
       ["one red solid squiggle",
        "three red solid diamonds",
        "three purple shaded ovals"],
       ["one red solid squiggle",
        "three red solid diamonds",
        "three red shaded ovals"],
       ["one red solid squiggle",
        "three red solid diamonds",
        "one green shaded oval"],
       ["one red solid squiggle",
        "three red solid diamonds",
        "one purple empty oval"],
       ["one red solid squiggle",
        "two purple shaded squiggles",
        "two red empty diamonds"],
       ["one red solid squiggle",
        "two purple shaded squiggles",
        "one purple empty squiggle"],
       ["one red solid squiggle",
        "two purple shaded squiggles",
        "three purple shaded ovals"],
       ["one red solid squiggle",
        "two purple shaded squiggles",
        "three red shaded ovals"],
       ["one red solid squiggle",
        "two purple shaded squiggles",
        "one green shaded oval"],
       ["one red solid squiggle",
        "two purple shaded squiggles",
        "one purple empty oval"],
       ["one red solid squiggle",
        "two red empty diamonds",
        "one purple empty squiggle"],
       ["one red solid squiggle",
        "two red empty diamonds",
        "three purple shaded ovals"],
       ["one red solid squiggle",
        "two red empty diamonds",
        "three red shaded ovals"],
       ["one red solid squiggle",
        "two red empty diamonds",
        "one green shaded oval"],
       ["one red solid squiggle",
        "two red empty diamonds",
        "one purple empty oval"],
       ["one red solid squiggle",
        "one purple empty squiggle",
        "three purple shaded ovals"],
       ["one red solid squiggle",
        "one purple empty squiggle",
        "three red shaded ovals"],
       ["one red solid squiggle",
        "one purple empty squiggle",
        "one green shaded oval"],
       ["one red solid squiggle",
        "one purple empty squiggle",
        "one purple empty oval"],
       ["one red solid squiggle",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["one red solid squiggle",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["one red solid squiggle",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["one red solid squiggle",
        "three red shaded ovals",
        "one green shaded oval"],
       ["one red solid squiggle",
        "three red shaded ovals",
        "one purple empty oval"],
       ["one red solid squiggle",
        "one green shaded oval",
        "one purple empty oval"],
       ["three green empty squiggles",
        "three red solid diamonds",
        "two purple shaded squiggles"],
       ["three green empty squiggles",
        "three red solid diamonds",
        "two red empty diamonds"],
       ["three green empty squiggles",
        "three red solid diamonds",
        "one purple empty squiggle"],
       ["three green empty squiggles",
        "three red solid diamonds",
        "three purple shaded ovals"],
       ["three green empty squiggles",
        "three red solid diamonds",
        "three red shaded ovals"],
       ["three green empty squiggles",
        "three red solid diamonds",
        "one green shaded oval"],
       ["three green empty squiggles",
        "three red solid diamonds",
        "one purple empty oval"],
       ["three green empty squiggles",
        "two purple shaded squiggles",
        "two red empty diamonds"],
       ["three green empty squiggles",
        "two purple shaded squiggles",
        "one purple empty squiggle"],
       ["three green empty squiggles",
        "two purple shaded squiggles",
        "three purple shaded ovals"],
       ["three green empty squiggles",
        "two purple shaded squiggles",
        "three red shaded ovals"],
       ["three green empty squiggles",
        "two purple shaded squiggles",
        "one green shaded oval"],
       ["three green empty squiggles",
        "two purple shaded squiggles",
        "one purple empty oval"],
       ["three green empty squiggles",
        "two red empty diamonds",
        "one purple empty squiggle"],
       ["three green empty squiggles",
        "two red empty diamonds",
        "three purple shaded ovals"],
       ["three green empty squiggles",
        "two red empty diamonds",
        "three red shaded ovals"],
       ["three green empty squiggles",
        "two red empty diamonds",
        "one green shaded oval"],
       ["three green empty squiggles",
        "two red empty diamonds",
        "one purple empty oval"],
       ["three green empty squiggles",
        "one purple empty squiggle",
        "three purple shaded ovals"],
       ["three green empty squiggles",
        "one purple empty squiggle",
        "three red shaded ovals"],
       ["three green empty squiggles",
        "one purple empty squiggle",
        "one green shaded oval"],
       ["three green empty squiggles",
        "one purple empty squiggle",
        "one purple empty oval"],
       ["three green empty squiggles",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["three green empty squiggles",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["three green empty squiggles",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["three green empty squiggles",
        "three red shaded ovals",
        "one green shaded oval"],
       ["three green empty squiggles",
        "three red shaded ovals",
        "one purple empty oval"],
       ["three green empty squiggles",
        "one green shaded oval",
        "one purple empty oval"],
       ["three red solid diamonds",
        "two purple shaded squiggles",
        "two red empty diamonds"],
       ["three red solid diamonds",
        "two purple shaded squiggles",
        "one purple empty squiggle"],
       ["three red solid diamonds",
        "two purple shaded squiggles",
        "three purple shaded ovals"],
       ["three red solid diamonds",
        "two purple shaded squiggles",
        "three red shaded ovals"],
       ["three red solid diamonds",
        "two purple shaded squiggles",
        "one green shaded oval"],
       ["three red solid diamonds",
        "two purple shaded squiggles",
        "one purple empty oval"],
       ["three red solid diamonds",
        "two red empty diamonds",
        "one purple empty squiggle"],
       ["three red solid diamonds",
        "two red empty diamonds",
        "three purple shaded ovals"],
       ["three red solid diamonds",
        "two red empty diamonds",
        "three red shaded ovals"],
       ["three red solid diamonds",
        "two red empty diamonds",
        "one green shaded oval"],
       ["three red solid diamonds",
        "two red empty diamonds",
        "one purple empty oval"],
       ["three red solid diamonds",
        "one purple empty squiggle",
        "three purple shaded ovals"],
       ["three red solid diamonds",
        "one purple empty squiggle",
        "three red shaded ovals"],
       ["three red solid diamonds",
        "one purple empty squiggle",
        "one green shaded oval"],
       ["three red solid diamonds",
        "one purple empty squiggle",
        "one purple empty oval"],
       ["three red solid diamonds",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["three red solid diamonds",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["three red solid diamonds",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["three red solid diamonds",
        "three red shaded ovals",
        "one green shaded oval"],
       ["three red solid diamonds",
        "three red shaded ovals",
        "one purple empty oval"],
       ["three red solid diamonds",
        "one green shaded oval",
        "one purple empty oval"],
       ["two purple shaded squiggles",
        "two red empty diamonds",
        "one purple empty squiggle"],
       ["two purple shaded squiggles",
        "two red empty diamonds",
        "three purple shaded ovals"],
       ["two purple shaded squiggles",
        "two red empty diamonds",
        "three red shaded ovals"],
       ["two purple shaded squiggles",
        "two red empty diamonds",
        "one green shaded oval"],
       ["two purple shaded squiggles",
        "two red empty diamonds",
        "one purple empty oval"],
       ["two purple shaded squiggles",
        "one purple empty squiggle",
        "three purple shaded ovals"],
       ["two purple shaded squiggles",
        "one purple empty squiggle",
        "three red shaded ovals"],
       ["two purple shaded squiggles",
        "one purple empty squiggle",
        "one green shaded oval"],
       ["two purple shaded squiggles",
        "one purple empty squiggle",
        "one purple empty oval"],
       ["two purple shaded squiggles",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["two purple shaded squiggles",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["two purple shaded squiggles",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["two purple shaded squiggles",
        "three red shaded ovals",
        "one green shaded oval"],
       ["two purple shaded squiggles",
        "three red shaded ovals",
        "one purple empty oval"],
       ["two purple shaded squiggles",
        "one green shaded oval",
        "one purple empty oval"],
       ["two red empty diamonds",
        "one purple empty squiggle",
        "three purple shaded ovals"],
       ["two red empty diamonds",
        "one purple empty squiggle",
        "three red shaded ovals"],
       ["two red empty diamonds",
        "one purple empty squiggle",
        "one green shaded oval"],
       ["two red empty diamonds",
        "one purple empty squiggle",
        "one purple empty oval"],
       ["two red empty diamonds",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["two red empty diamonds",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["two red empty diamonds",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["two red empty diamonds",
        "three red shaded ovals",
        "one green shaded oval"],
       ["two red empty diamonds",
        "three red shaded ovals",
        "one purple empty oval"],
       ["two red empty diamonds",
        "one green shaded oval",
        "one purple empty oval"],
       ["one purple empty squiggle",
        "three purple shaded ovals",
        "three red shaded ovals"],
       ["one purple empty squiggle",
        "three purple shaded ovals",
        "one green shaded oval"],
       ["one purple empty squiggle",
        "three purple shaded ovals",
        "one purple empty oval"],
       ["one purple empty squiggle",
        "three red shaded ovals",
        "one green shaded oval"],
       ["one purple empty squiggle",
        "three red shaded ovals",
        "one purple empty oval"],
       ["one purple empty squiggle",
        "one green shaded oval",
        "one purple empty oval"],
       ["three purple shaded ovals",
        "three red shaded ovals",
        "one green shaded oval"],
       ["three purple shaded ovals",
        "three red shaded ovals",
        "one purple empty oval"],
       ["three purple shaded ovals",
        "one green shaded oval",
        "one purple empty oval"],
       ["three red shaded ovals",
        "one green shaded oval",
        "one purple empty oval"]]
    SetGame::Card.combinations(@strings).should == combinations
  end
end
