module SetGame
  class Set
    def self.feature_the_same_for_all_cards(feature, cards)
      cards.collect {|card| card[feature]}.uniq.size == 1
    end
    def self.sets(cards)
    end
    def self.valid?(cards)
    end
  end
end
