class CommoditiesController < ApplicationController

	before_action :set_commodity, only: [:show, :edit, :update, :destroy]
	skip_before_action :verify_authenticity_token
	require 'writeJSON'

	def index
		@commodities = Commodity.all.to_json
		respond_to do |format|
			format.html # index.html.erb
			#format.js
			format.json { render json: @commodities }
		end
	end

	def show
	end

	def new
		@commodity = Commodity.new
		respond_to do |format|
			format.html # new.html.erb
			format.js
			format.json { render json: @commodity }
		end
	end

	def edit
		respond_to do |format|
			format.js
			format.json { render json: @commodity }
		end
	end

	def create
		@commodity = Commodity.new(commodity_params)

		respond_to do |format|
			if @commodity.save
				SKEPTICS.write_commodities_to_json
			#format.js
				format.html { redirect_to @commodity, notice: 'Commodity was successfully created.' }
				format.json { render json: @commodity, status: :created, location: @commodity }

			else
				format.js
			end
		end
	end

	def update

		respond_to do |format|
			if @commodity.update(commodity_params)
				SKEPTICS.write_commodities_to_json
				format.html { redirect_to @commodity, notice: 'Commodity was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @commodity.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@commodity.destroy

		respond_to do |format|
			format.html { redirect_to commodities_url }
			format.js
			format.json { head :no_content }
		end

		if @commodity.destroy
			SKEPTICS.write_commodities_to_json
		end
	end

	private
	def set_commodity
		@commodity = Commodity.find(params[:id])
	end

	def commodity_params
		params.require(:commodity).permit(:name, :description, :price, :image_url, :category, :year, :winner)
	end
end
