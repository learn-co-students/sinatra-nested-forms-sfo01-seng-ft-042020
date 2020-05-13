require './environment'

module FormsLab
  class App < Sinatra::Base


    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
            
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @new_pirate = Pirate.new(params[:pirate])

      erb :"pirates/show"
    end

  end
end
