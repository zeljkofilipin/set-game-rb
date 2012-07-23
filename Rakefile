require "bundler/setup"

desc "Run RSpec code examples"
task :default => :play

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new

desc "play the game"
task :play do
  require "watir-webdriver"
  browser = Watir::Browser.new
  browser.goto "http://thebreretons.com/setgame/"
  strings = browser.imgs(id: /^card?/).collect {|img| img.alt}

  require_relative "lib/set"
  p SetGame::Set.sets(strings)
end
