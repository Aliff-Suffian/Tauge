require 'sinatra'
require 'rubygems'

configure do
  enable :sessions
end

get '/' do
 '<a href="/login">Sign In</a>' '<a href="/getstarted">Get Started</a>'
end

get '/getstarted' do
  session[:identify]? session.delete(:identify) : ''
  '<form action="/login" method="POST">
  Name : <input type="text" name="identify">
  <br>Password : <input type="password">
  <br>Confirm Password : <input type="password">
  <br><button>Sign Up</button>
  </form>'
end

get '/login' do
  session[:identify]? session.delete(:identify) : ''
  '<form action="/login" method="POST">
  Name : <input type="text" name="identify">
  <br>Password : <input type="password">
  <br><button>Sign In</button>
  </form>'
end

post '/getstarted' do
  session[:identity] = params['identity']
	redirect to '/'
end

post '/login' do
  session[:identity] = params['identity']
	redirect to '/'
end
