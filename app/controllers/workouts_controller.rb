class WorkoutsController < ApplicationController



def index
	@workouts= Workout.all
end

def create
end

def show
 @workout= Workout.find(params[:id])
 @exercises= @workout.exercises
end

def destroy
	#logs
end


  
end