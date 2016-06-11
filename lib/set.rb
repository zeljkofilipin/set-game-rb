module SetGame
  class Set
    def self.feature_different_for_all_cards(feature, strings)
      require_relative 'card'
      cards = SetGame::Card.cards(strings)
      cards.collect { |card| card[feature].chomp('s') }.uniq.size == 3
    end

    def self.feature_the_same_for_all_cards(feature, strings)
      require_relative 'card'
      cards = SetGame::Card.cards(strings)
      cards.collect { |card| card[feature].chomp('s') }.uniq.size == 1
    end

    def self.feature_the_same_or_different_for_all_cards?(feature, strings)
      feature_the_same_for_all_cards(feature, strings) || feature_different_for_all_cards(feature, strings)
    end

    def self.sets(cards)
      require_relative 'card'
      combinations = SetGame::Card.combinations(cards)
      combinations.collect do |set|
        set if valid?(set)
      end.compact
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
