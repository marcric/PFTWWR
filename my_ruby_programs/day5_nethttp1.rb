# day5_nethttp1.rb
require 'net/http'
url = URI.parse('http://satishtalim.github.com/webruby/chapter3.html')
Net::HTTP.start(url.host, url.port) do |http|
  p http.request( Net::HTTP::Get.new(url.path)).body.scan('the').count
end
