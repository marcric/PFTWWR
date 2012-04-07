# day5_netouri.rb
require 'open-uri'
p open("http://satishtalim.github.com/webruby/chapter3.html").readlines.join.scan('the').count
