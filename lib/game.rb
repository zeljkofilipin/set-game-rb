module SetGame
  class Game
    def self.strings
      require_relative "browser"
      SetGame::Browser.new.get_cards
    end
  end
end
