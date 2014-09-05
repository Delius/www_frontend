class PagesController < ApplicationController

	def index
		@pages = Page.all
		
	end

	def show
		@page = Page.find(params[:id])
		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render xml: @page}
			format.json { render json: @page}
		end
	end



	def new
		@page = Page.new
	end

	def create
		@page = Page.new(params[:page].permit(:title))
		if @page.save
			flash[:notice] = 'Page Created'
			redirect_to @page
		else
			render 'new'
		end
	end


	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])

		if @page.update(params[:page].permit(:title))
			flash[:notice] = 'Page Updated'
			redirect_to @page
			render 'edit'
		end
	end
end


