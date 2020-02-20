require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get "/" do
    erb :welcome
  end


  get '/dishes' do
    @dishes = Dish.all
    erb :index
  end

  get '/dishes/new' do
    erb :new
  end 

  get '/dishes/:id' do
    @dish = Dish.find_by_id(params[:id]) 
    erb :show
   end

  patch '/dishes/:id' do
    params.delete(:"_method")
    @dish = Dish.find_by_id(params[:id]) 
    @dish.update(params)
    redirect "/dishes/#{@dish.id}"
   end

  get '/dishes/:id/edit' do
    @dish = Dish.find_by_id(params[:id]) 
    erb :edit
  end 


  post '/dishes' do
   dish = Dish.create(params)
   redirect "/dishes/#{dish.id}"
  end 

  delete '/dishes/:id' do
    Dish.delete(params[:id].to_i)
    redirect "/dishes"

  end


 
end
