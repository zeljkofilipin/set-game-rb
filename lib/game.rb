module SetGame
  class Game
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
