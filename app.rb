require 'sinatra/base'
<<<<<<< HEAD
require './lib/player'
require './lib/game'
require './lib/player_attack'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
     erb :index
  end

  post '/names' do
   player_1 = Player.new(params[:player_1_name])
   player_2 = Player.new(params[:player_2_name])
   $game = Game.new(player_1, player_2)
   redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    Attack.run($game.current_opponent)
    if $game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

=======
require 'player'

class Battle < Sinatra::Base

  use Rack::Session::Cookie,:key => 'rack.session',
                            :path => '/',
                            :secret => 'your_secret'

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :attack
  end
>>>>>>> 1a2558bfe51428dd6a492500163f110ca1ace7e9
  # start the server if ruby file executed directly
  run! if app_file == $0
end
