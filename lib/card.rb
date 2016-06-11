module SetGame
  class Card
    def self.card(string)
      features = string.split " "
      {count: features[0], color: features[1], fill: features[2], shape: features[3]}
    end

    def self.cards(strings)
      strings.collect do |string|
        card(string)
      end
    end

    def self.combinations(strings)
      cards = strings.each { |string| string.split " "}
      cards.combination(3).to_a
    end
  end
end
