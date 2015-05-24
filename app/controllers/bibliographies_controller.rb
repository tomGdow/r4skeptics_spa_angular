class BibliographiesController < ApplicationController
	before_action :set_bibliography, only: [:show, :edit, :update, :destroy]

	def index
		@bibliographies = Bibliography.all
	end

	def show
	end

	def new
		@bibliography = Bibliography.new
	end

	def edit
	end

	def create
		@bibliography = Bibliography.new(bibliography_params)

		respond_to do |format|
			if @bibliography.save
				format.html { redirect_to @bibliography, notice: 'Bibliography was successfully created.' }
				format.json { render :show, status: :created, location: @bibliography }
			else
				format.js
			end
		end
	end

	def update
		respond_to do |format|
			if @bibliography.update(bibliography_params)
				format.html { redirect_to @bibliography, notice: 'Bibliography was successfully updated.' }
				format.json { render :show, status: :ok, location: @bibliography }
			else
			#	format.html { render :edit }
			format.js
			#	format.json { render json: @bibliography.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@bibliography.destroy
		respond_to do |format|
			format.html { redirect_to '/view16'}
			format.js
			format.json { head :no_content }
		end
	end

	private
	def set_bibliography
		@bibliography = Bibliography.find(params[:id])
	end

	def bibliography_params
		params.require(:bibliography).permit(:firstsurname, :authors, :year, :title, :journalname, :publication, :volume, :pages, :url, :localpdflink, :accessdate, :websitetitle, :conferencetitle, :publisher, :city, :editors, :edition, :comment, :isbn, :abstract)
	end
end
