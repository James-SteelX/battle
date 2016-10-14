require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/player_attack'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
     erb :index
  end

  post '/names' do
   @player_1 = Player.new(params[:player_1_name])
   @player_2 = Player.new(params[:player_2_name])
   @game = Game.new_game(@player_1, @player_2)
   redirect '/play'
  end

  before do
   @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/restart' do
    redirect '/'
  end

  get '/attack' do
    erb :attack
  end

  get '/heal' do
    erb :heal
  end

#attacks

    post '/attack' do
      Attack.tackle(@game.current_opponent)
      if @game.game_over?
        redirect '/game-over'
      else
        redirect '/attack'
      end
    end

    post '/fire-ball' do
      Attack.fire_ball(@game.current_opponent)
      if @game.game_over?
        redirect '/game-over'
      else
        redirect '/attack'
      end
    end

    post '/death-punch' do
      Attack.death_punch(@game.current_opponent)
      if @game.game_over?
        redirect '/game-over'
      else
        redirect '/attack'
      end
    end

    post '/heal' do
      @game.heal
      if @game.game_over?
        redirect '/game-over'
      else
        redirect '/heal'
      end
    end

#attacks end

  post '/switch-turns' do
    @game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
