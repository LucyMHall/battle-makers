require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/names' do
    erb (:index)
  end

  post '/names' do
    session['player1_name'] = params['Player_1']
    session['player2_name'] = params['Player_2']
    redirect "/play"
  end

  get '/play' do
    @name_1 = session['player1_name']
    @name_2 = session['player2_name']
    erb (:play)
  end

  post '/play' do
    redirect "/attack"
  end

  get '/attack' do
    @name_1 = session['player1_name']
    @name_2 = session['player2_name']
    erb (:attack)
  end

  run! if app_file == $0
end
