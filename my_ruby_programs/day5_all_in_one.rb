# day5_all_in_one.rb
require 'net/http'
require 'open-uri'
require 'hpricot'
require 'nokogiri'

# nethttp
url = URI.parse('http://satishtalim.github.com/webruby/chapter3.html')
Net::HTTP.start(url.host, url.port) do |http|
  p http.request( Net::HTTP::Get.new(url.path)).body.scan('the').count
end

# open uri
p open("http://satishtalim.github.com/webruby/chapter3.html").readlines.join.scan('the').count

# hpricot
p Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html')).inner_html.scan('the').count

# nokogiri
puts Nokogiri::HTML(open('http://satishtalim.github.com/webruby/chapter3.html')).text.scan('the').count
