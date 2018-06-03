require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
    enable :sessions
    
    get '/' do
        erb :index
    end

    get '/play' do
        @player = session[:player]
        erb :play
    end

    post '/name' do
        session[:player] = Player.new(params[:player])
        redirect '/play'
    end

    get '/result' do
        @player = session[:player]
        @computer = Computer.new.choice
        @game = Game.new({:player_1 => @player.option, :player_2 => @computer}).result
        erb :result
    end

    post '/choice' do
        session[:player].option = params[:option].to_sym
        redirect '/result'
    end

end