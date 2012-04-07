# day5_nokogiri.rb
require 'nokogiri'
require 'open-uri'
puts Nokogiri::HTML(open('http://satishtalim.github.com/webruby/chapter3.html')).text.scan('the').count
