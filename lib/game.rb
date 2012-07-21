module SetGame
  class Game
    def self.combinations_for_cards(cards)
      cards.combination(3).to_a
    end
    def strings
      require_relative "browser"
      SetGame::Browser.new.get_cards
    end
    def strings_to_cards(strings)
      strings.collect do |string|
        features = string.split " "
        {count: features[0], color: features[1], fill: features[2], shape: features[3]}
      end
    end
  end
end
