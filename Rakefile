require "bundler/setup"

require 'rubocop/rake_task'
RuboCop::RakeTask.new

desc "run all tasks"
task :default => [:spec]

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new

desc "play the game"
task :play do
  require "watir-webdriver"
  browser = Watir::Browser.new
  browser.goto "http://thebreretons.com/setgame/"

  puts "cards"
  require "pp"
  pp strings = browser.imgs(id: /^card?/).collect { |img| img.alt}

  puts "\nsets"
  require_relative "lib/set"
  pp sets = SetGame::Set.sets(strings)

  sets.each do |set|
    set.each do |card|
      browser.img(alt: card).click
      sleep 0.2
    end
  end
end
