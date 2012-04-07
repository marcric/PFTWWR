# day6_simple_rack.rb 
proc = -> env {
	[200, {"Content-type" => "text/plain"}, 
         "Command line argument you typed was: #{ARGV[0] || "none given"}"] 
}
puts proc.call({})
