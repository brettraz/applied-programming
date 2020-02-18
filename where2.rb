require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  @lat= rand(-90.0000..90.0000)
  @long= rand(-180.0000..180.0000)
  @lat_long =  "#{@lat} #{@long}"
  view "where2"
  
end