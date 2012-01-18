require 'sinatra'


get "/" do
  erb :index
end

get "/boggle.js" do
  coffee_file = File.read(File.join('public', 'js', 'boggle.coffee'))
  content_type "text/javascript"
  CoffeeScript.compile(coffee_file)
end

