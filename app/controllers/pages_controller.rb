class PagesController < ApplicationController

	def home
		@pages = Page.all
		
	end

	def show
		@Page = Page.find(params[:id])

	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(params[:page].permit(:name))
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

		if @page.update(params[:page].permit(:name))
			flash[:notice] = 'Page Updated'
			redirect_to @page
			render 'edit'
		end
	end

	def about
	end
	def contact
	end
end

