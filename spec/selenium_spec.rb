describe 'Set game' do
  before(:each) do
    require 'selenium-webdriver'
    @driver = Selenium::WebDriver.for :firefox
    @driver.navigate.to 'http://smart-games.org/en/set_classic/start/10'
  end

  after(:each) do
    @driver.quit
  end

  it 'should open the game' do
    expect(@driver.title).to eq('Set - online card game')
  end

  it 'should solve the game' do
    while @driver.find_element(:css, '#menu > p:nth-child(3)').text !=
          'Sets found: 10 / 10'
      strings = @driver.find_elements(css: 'table#board .card_sign')
                       .collect { |img| img.attribute('alt').rstrip }
                       .uniq
      require_relative '../lib/set'
      sets = SetGame::Set.sets(strings)
      sets[0].each do |card|
        @driver.find_element(:css, "img[alt='#{card} ']").click
      end
    end
  end
end
