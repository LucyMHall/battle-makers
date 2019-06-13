require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/names' do
    erb (:index)
  end

  post '/names' do
    $player_1 = Player.new(params['Player_1'])
    $player_2 = Player.new(params['Player_2'])
    redirect "/play"
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hit_points = $player_2.hit_points
    erb (:play)
  end

  post '/play' do
    @player_2_name = $player_2.name
    $player_2.attacked
    redirect "/attack"
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hit_points = $player_2.hit_points
    erb (:attack)
  end

  run! if app_file == $0
end
