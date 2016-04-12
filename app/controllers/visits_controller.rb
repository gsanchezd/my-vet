class VisitsController < ApplicationController
	def index 
  		@visits = Visit.all  
	end

	def new 
  		@visit = Visit.new 
	end

	def create 
	  @visit = Visit.new(visit_params) 
	  @visit.pet = @pet
	  respond_to do |format|
	  	if @visit.save 
	  	  format.html { redirect_to @visit, notice: 'Registro de visita exitoso.' }
          format.json { render :index, status: :created, location: @visit } 
	  	else 
	      format.html { render :new }
          format.json { render json: @visit.errors, status: :unprocessable_entity } 
		end
	end
end

private 
	def visit_params 
	    params.require(:visit).permit(:content) 
	end

	def show 
	  @pet = Pet.find(params[:id]) 
	  @visits = @pet.visits 
	end
end