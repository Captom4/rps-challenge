require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player_name])
    @game = Game.create(player1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play_hand' do
    @game.player1.choose_hand(params[:choice].to_sym)
    @game.player2.choose_hand(Computer.choice)
    @game.compare_players
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end