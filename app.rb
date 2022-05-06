require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
#here we've required our new tested player.rb, 
#v simple name initialization situation :p

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $player_1 = Player.new(params[:player_1_name])
  $player_2 = Player.new(params[:player_2_name])
  redirect '/play'
end
#now we've replaced our session memory stores and replaced them with instantiations
#of the new Player class, taking the params of previous as arguments


get '/play' do
  @player_1 = $player_1
  @player_2 = $player_2
  erb :play
end
#these global variables go on to define our instance variables
#required by the /play erb

get '/attack' do
  @player_1 = $player_1
  @player_2 = $player_2
  @player_1.attack(@player_2)
  erb :attack
end

  run! if app_file == $0
end