require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'
class RockPaperScissors < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/play' do
        @player = $player
        erb :play
    end

    post '/name' do
        $player = Player.new(params[:player])
        redirect '/play'
    end

    get '/result' do
        @player = $player
        @computer = Computer.new.choice
        @game = Game.new(@player.option, @computer).result
        erb :result
    end

    post '/choice' do
        $player.choice(params[:option])
        redirect '/result'
    end

end