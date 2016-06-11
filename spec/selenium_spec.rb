describe 'Set game' do
  it 'opens the game' do
    require 'selenium-webdriver'

    driver = Selenium::WebDriver.for :firefox
    driver.navigate.to 'http://smart-games.org/en/set_classic/start/10'

    expect(driver.title).to eq('Set - online card game')

    driver.quit
  end
end
