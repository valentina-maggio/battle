require 'sinatra/base'
require 'sinatra/reloader' 
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end
  
  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    @game.switch_turn
    erb :attack
  end

  get '/ok' do
    @game = $game
    erb :play
  end

  run! if app_file == $0
end
