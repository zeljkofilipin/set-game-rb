module SetGame
  class Set
    def self.feature_different_for_all_cards(feature, cards)
      cards.collect {|card| card[feature]}.uniq.size == 3
    end
    def self.feature_the_same_for_all_cards(feature, cards)
      cards.collect {|card| card[feature]}.uniq.size == 1
    end
    def self.feature_the_same_or_different_for_all_cards?(feature, cards)
      feature_the_same_for_all_cards(feature, cards) or feature_different_for_all_cards(feature, cards)
    end
    def self.sets(cards)
    end
    def self.valid?(cards)
      features = [:count, :color, :fill, :shape]
      valid = features.collect do |feature|
        feature_the_same_or_different_for_all_cards?(feature, cards)
      end
      valid == [true, true, true, true]
    end
  end
end
