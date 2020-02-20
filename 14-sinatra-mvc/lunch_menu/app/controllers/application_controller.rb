require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/dishes' do
    @dishes = Dish.all
    erb :index
  end

  get '/dishes/:id' do
    @dish = Dish.find_by_id(params[:id]) 
    erb :show
   end

  post '/dishes' do
   dish = Dish.create(params )
   redirect "/dishes/#{dish.id}"
  end 
 
end
