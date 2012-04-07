# day7_rack_gem.rb
# http://localhost:8500/
require 'rack'

def my_method env
  [200, {},  ["Command line argument you typed was: #{ARGV[0] || "none given"}"]]
end
Rack::Handler::WEBrick.run method(:my_method), :Port =>8500
