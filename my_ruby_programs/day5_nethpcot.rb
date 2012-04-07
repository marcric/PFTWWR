# day5_nethpcot.rb
require 'open-uri'
require 'hpricot'
p Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html')).inner_html.scan('the').count
