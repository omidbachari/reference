require 'rack'
require 'pry'

app = Proc.new do |env|

  if env["PATH_INFO"] == "/beers"
    [200, {"Content-Type" => "text/html"}, ["<h1>BEERS</h1>"]]
  else
    [404, {"Content-Type" => "text/html"}, ["GTFO"]]
  end
end

Rack::Handler::WEBrick.run app
