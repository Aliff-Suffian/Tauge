class ApplicationController < Sinatra::Base
    enable :sessions

    # Set public folder
    set :public_folder, File.expand_path('../../static',__FILE__)

    # Set views folder
    set :views, File.expand_path('../../views',__FILE__)

      get '/' do
        erb :home
      end

      get '/index' do
        erb :index
      end
      
      get '/getstarted' do
        erb :getstarted
      end
      
      get '/login' do
        erb :login
      end

      get '/teacher' do
        erb :teacher
      end
      
      post '/teacher' do
        @teacher = Teacher.find_by_email(params[:email])
        if @teacher.password == params[:password]
            session[:teacher_id] = @teacher.id 
            redirect '/index'
        else
            redirect to '/'
        end
      end   
      
      
      post '/getstarted' do

          redirect to '/'
      end
      
      post '/login' do
        @user = User.find_by_email(params[:email])
        if @user.password == params[:password]
            session[:user_id] = @user.id 
            redirect '/courses'
        else
            redirect to '/'
        end
      end   
      
      post '/register' do
        @users = User.create(name: params[:name], email: params[:email], password: params[:password])
        
        erb :getstarted
        redirect '/' 
      end
      
      get '/courses' do
        erb :courses
        
      end
      
      get '/home' do
        erb :home
      end

     post '/index' do
        redirect '/courses'
     end

end
