require 'sinatra'
require 'sinatra/activerecord'
require './config/users.rb'
require 'bcrypt'

set :database, "sqlite3:tauge.sqlite3"
set :public_folder, File.expand_path('../../static', __FILE__)
set :views, File.expand_path('../../views', __FILE__)

configure do
  enable :sessions
end

get '/' do
  erb :home
end

post '/dashboard' do
  @users = User.all
  erb :index
end

get '/getstarted' do
  session[:identify]? session.delete(:identify) : ''
  
  erb :getstarted
end

get '/login' do
  session[:identify]? session.delete(:identify) : ''
  
  erb :login
end

get '/teacher' do
  session[:identify]? session.delete(:identify) : ''
  
  erb :teacher
end


post '/getstarted' do
  session[:identity] = params['identity']
	redirect to '/'
end

post '/login' do
  session[:identity] = params['identity']
	redirect to '/'
end

post '/register' do
  @users = User.create(name: params[:name], email: params[:email], password_digest: params[:password])
  
  erb :getstarted
  redirect '/' 
end









