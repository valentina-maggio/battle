require 'sinatra/base'
require 'sinatra/reloader' 
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end
  
  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:attack)
  end

  run! if app_file == $0
end
