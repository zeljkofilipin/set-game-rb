module SetGame
  class Game
    def self.combinations_for_cards(cards)
      cards.combination(3).to_a
    end
    def self.strings
      require_relative "browser"
      SetGame::Browser.new.get_cards
    end
  end
end
