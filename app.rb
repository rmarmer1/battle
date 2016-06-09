require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base


  enable :sessions

  get '/' do
    erb :index
  end

	post '/names' do
		# session[:player1] = params[:player1]
		# session[:player2] = params[:player2]
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.return_name
    @player2 = $player2.return_name
    erb :play
  end

  post '/play' do
  	@player1 = $player1.return_name
    @player2 = $player2.return_name
  	@attacked = true
  	erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
