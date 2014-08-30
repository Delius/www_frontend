class ExamplesController < ApplicationController


	def index
		@examples = Example.all

	end

	def show

			@example = Example.find(params[:id])
		end
		

	def new
		@example = Example.new
	end

	def create
		@example = Example.new(params[:example].permit(:name, :technology_id))
		if @example.save
			flash[:notice] = 'Example Created'
			redirect_to @example
		else
			render 'new'
		end
	end

	def edit
		@example = Example.find(params[:id])
	end

	def update
		@example = Example.find(params[:id])

		if @example.update(params[:example].permit(:name, :technology_id, :www_link))
			flash[:notice] = 'Example Updated'
			redirect_to @example
		else
			render 'edit'
		end
	end

end
