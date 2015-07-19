class ExercisesController < ApplicationController

def show
	@exercise= Exercise.find(params[:id])
	if (params[:id].to_i != Exercise.all[-1].id)
		@next = Exercise.find(params[:id].to_i + 1)
	else
		@next = nil
	end
end

end