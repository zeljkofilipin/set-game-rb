module SetGame
  class Browser
    def initialize
      require "watir-webdriver"
      @browser = Watir::Browser.new
    end
    def get_cards
      @browser.goto "http://thebreretons.com/setgame/"
      @browser.imgs(id: /^card?/).collect {|img| img.alt}
    end
  end
end
