require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do 
      puts "PARAMS #{params}"
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all
      
      erb :'pirates/show'
      # pirate = Pirate.new()
      
    end
  end
    # code other routes/actions here

  
end
