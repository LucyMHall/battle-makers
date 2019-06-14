require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb (:index)
  end

  get '/names' do
    erb (:names)
  end

  post '/names' do
    player_1 = Player.new(params['Player_1'])
    player_2 = Player.new(params['Player_2'])
    $game = Game.new(player_1, player_2)
    redirect "/play"
  end

  get '/play' do
    @game = $game
    erb (:play)
  end

  get '/battle' do
    @game = $game
    erb (:battle)
  end

  post '/battle' do #run attack method on player
    @game = $game
    @game.attack(@game.opponent)
    if @game.zero_hit_points?(@game.opponent)
      redirect "/winner"
    else
      redirect "/results"
    end
  end

  get '/results' do
    @game = $game
    erb (:results)
  end

  post '/results' do
    @game = $game
    @game.switch_players
    redirect "/battle"
  end

  get '/winner' do
    @game = $game
    erb (:winner)
  end


  run! if app_file == $0
end
