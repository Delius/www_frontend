class TechnologiesController < ApplicationController
def index
		@technologies = Technology.all
	end

	def show
		@technology = Technology.find(params[:id])
		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render xml: @technology}
			format.json { render json: @technology}
		end
	end

	def new
		@technology = Technology.new
	end

	def create
		@technology = Technology.new(params[:technology].permit(:name))
		if @technology.save
			flash[:notice] = 'Technology Created'
			redirect_to @technology
		else
			render 'new'
		end
	end

	def edit
		@technology = Technology.find(params[:id])
	end

	def update
		@technology = Technology.find(params[:id])

		if @technology.update(params[:technology].permit(:name))
			flash[:notice] = 'Technology Updated'
			redirect_to @technology
		else
			render 'edit'
		end
	end

end
