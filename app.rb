require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here
get '/' do
  # 'Testing infrastructure working!'
  erb :index
end

post '/names' do
  @player_1_name = params[:player_1_name]
  @player_2_name = params[:player_2_name]
  p @player_1_name
  p @player_2_name
  erb :play
end

  # start the server if this file is executed directly (so not change the line below)
  run! if app_file == $0
end