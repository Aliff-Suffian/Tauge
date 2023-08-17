require 'sinatra'
require 'sinatra/activerecord'
require './config/users.rb'

set :database, "sqlite3:tauge.sqlite3"
set :public_folder, __dir__ + '/static'

configure do
  enable :sessions
end

get '/' do

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

post '/getstarted' do
  session[:identity] = params['identity']
	redirect to '/'
end

post '/login' do
  session[:identity] = params['identity']
	redirect to '/'
end

get '/dashboard' do
    erb :dashboard
end

