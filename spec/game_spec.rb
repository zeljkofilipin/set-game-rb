require_relative "../lib/game"
describe SetGame::Game do
  before :each do
    # screenshot of the game is at misc/1.png
    @cards =
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
  end

  it "returns correct 220 combinations for 12 cards" do
    combinations =
        [[["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["three", "green", "empty", "diamonds"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "diamonds"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "purple", "empty", "diamond"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "red", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["two", "green", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "purple", "solid", "oval"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["two", "red", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "empty", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "solid", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "solid", "oval"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "shaded", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "empty", "diamond"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "red", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["three", "green", "empty", "diamonds"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["two", "red", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "empty", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "solid", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "shaded", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "squiggle"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "solid", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "red", "empty", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "empty", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "empty", "ovals"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "solid", "oval"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "shaded", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "empty", "diamond"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "green", "solid", "ovals"],
          ["two", "red", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "solid", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "green", "solid", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "green", "solid", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "green", "solid", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "solid", "ovals"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "empty", "diamond"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "shaded", "squiggle"],
          ["two", "red", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "shaded", "squiggle"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "shaded", "squiggle"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"]],
         [["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "diamond"],
          ["two", "red", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "diamond"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["one", "purple", "empty", "diamond"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "empty", "diamond"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"]],
         [["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "shaded", "ovals"],
          ["two", "green", "shaded", "ovals"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "red", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "red", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"]],
         [["two", "green", "shaded", "ovals"],
          ["one", "purple", "solid", "oval"],
          ["three", "green", "solid", "diamonds"]],
         [["two", "green", "shaded", "ovals"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]],
         [["one", "purple", "solid", "oval"],
          ["one", "green", "empty", "squiggle"],
          ["three", "green", "solid", "diamonds"]]]
    SetGame::Game.combinations_for_cards(@cards).should == combinations
  end
end
