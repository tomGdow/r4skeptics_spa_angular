class Commodity < ActiveRecord::Base
	  CATEGORY_TYPES = ['Midfielder', 'Defender', 'Goalkeeper', 'Forward']
		
  scope :defender, -> {where("category = ?","Defender")}
  scope :midfielder, -> {where("category = ?","Midfielder")}
  scope :forward, -> {where("category = ?","Forward")}
  scope :newest, -> {order("created_at DESC")}
end
