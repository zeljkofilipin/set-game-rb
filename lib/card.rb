module SetGame
  class Card
    def self.card(string)
      features = string.split " "
      {count: features[0], color: features[1], fill: features[2], shape: features[3]}
    end
  end
end
