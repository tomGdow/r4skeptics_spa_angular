class LineItem < ActiveRecord::Base
	belongs_to :commodity
	belongs_to :cart


	def total_price_lineItem
		sales_price.to_f * quantity
	end

	##Dowstore.priceMarkup functionality comes from priceMarkup gem

	def sales_price
		Dowstore.priceMarkup(commodity.price,0,2)
	end

end
