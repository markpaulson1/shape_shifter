class SessionsController < ApplicationController
 
 def new
    if logged_in?
      redirect_to current_user
    end
 end

    def create
    if !logged_in?
    	user = User.find_by({email: params[:email]})
    	session[:user_id] = user.id
    	redirect_to '/workouts'
    end
   end

    def destroy
    	session[:user_id] = nil
    	redirect_to '/login'
    end

end	