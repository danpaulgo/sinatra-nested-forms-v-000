require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships].map do |ship|
        Ship.new(ship)
      end
      erb :'pirates/show'
    end

  end
end
