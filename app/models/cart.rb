class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy 
	def add_commodity(commodity_id)
		current_item = line_items.find_by(commodity_id: commodity_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(commodity_id: commodity_id)
		end
		current_item
	end
  #def total_price
  #  total = 0
  #  line_items.each do |line_item|
  #    total += line_item.commodity.price * line_item.quantity
  #  end
  #  total
  #end
	
	def total_price
		line_items.to_a.sum { |item| item.total_price_lineItem} 
	end
end
