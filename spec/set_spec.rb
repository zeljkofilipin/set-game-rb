describe "the game of set" do
  it "returns 6 sets of 3 cards for valid game with 12 cards" do
    # screenshot of the game is at misc/1.png
    cards =
      [
        ["two", "red", "empty", "diamonds"],
        ["three", "green", "empty", "diamonds"],
        ["one", "purple", "empty", "squiggle"],
        ["two", "red", "empty", "ovals"],

        ["two", "green", "solid", "ovals"],
        ["one", "purple", "shaded", "squiggle"],
        ["one", "purple", "empty", "diamond"],
        ["two", "red", "shaded", "ovals"],

        ["two", "green", "shaded", "ovals"],
        ["one", "purple", "solid", "oval"],
        ["one", "green", "empty", "squiggle"],
        ["three", "green", "solid", "diamonds"]
      ]

    sets =
      [
        [
          ["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
        ],
        [
          ["one", "purple", "solid", "oval"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"],
        ],
        [
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"],
          ["two", "red", "shaded", "ovals"],
        ],
        [
          ["three", "green", "solid", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
        ],
        [
          ["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
        ],
        [
          ["three", "green", "solid", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "red", "shaded", "ovals"],
        ],
      ]

    require_relative "../lib/set"
    sets_for_cards(cards).should == sets
  end
end


