require 'sinatra/base'

class Battle < Sinatra::Base

get '/' do
  erb (:index)
end

post '/'do
  @name1 = params['Player_1']
  @name2 = params['Player_2']
  "Player 1: #{@name1} V Player 2: #{@name2}"
end


  run! if app_file == $0
end
