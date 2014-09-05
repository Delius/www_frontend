class ExamplesController < ApplicationController


	def index

		if params[:tag]
			@examples = Example.tagged_with(params[:tag])
		else
			@examples = Example.all
		end
end


		def show
if params[:tag]
			@example = Example.find(params[:id]).tagged_with(params[:tag])
		
		end
		else
			@example = Example.find(params[:id])
		end

		def new
			@example = Example.new
		end

		def create
			@example = Example.new(params[:example].permit(:name, :page_id,:technology_id ,:code_link,:www_link, :description, :all_tags))
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

			if @example.update(params[:example].permit(:name, :page_id,:technology_id,:code_link, :www_link, :description,:all_tags))
				flash[:notice] = 'Example Updated'
				redirect_to @example
			else
				render 'edit'
			end
		end

		

	end
