describe 'Set game' do
  before(:each) do
    require 'selenium-webdriver'
    @driver = Selenium::WebDriver.for :firefox
    @driver.navigate.to 'http://smart-games.org/en/set_classic/start/10'
  end

  after(:each) do
    @driver.quit
  end

  it 'opens the game' do
    expect(@driver.title).to eq('Set - online card game')
  end
end
