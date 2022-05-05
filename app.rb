require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions
#^^so we've enabled sessions, a memory-state store, 
#if activated you have one store per user-session
get '/' do
  erb :index
end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  session[:player_2_name] = params[:player_2_name]
  p session[:player_1_name]
  p session[:player_2_name]
  redirect '/play'
end
#redirects prevent resubmissions of a post request, think about browsers asking you if you're sure you
#you want to 'confirm resubmission' POST/REDIRECT/GET
get '/play' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb :play
end
#we lost our instance variables, storing them as sessions. this redirect allows
#us to redefine them, extracting from our previously defined session variables/hash-values

  run! if app_file == $0
end