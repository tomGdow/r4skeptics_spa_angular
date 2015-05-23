class Commodity < ActiveRecord::Base

	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	CATEGORY_TYPES = ['Midfielder', 'Defender', 'Goalkeeper', 'Forward']

	scope :defender, -> {where("category = ?","Defender")}
	scope :midfielder, -> {where("category = ?","Midfielder")}
	scope :forward, -> {where("category = ?","Forward")}
	scope :newest, -> {order("created_at DESC")}

	validates :name,	:category,	:description, :price,	:image_url,	:presence => true
	validates :description,	:length => { :minimum => 5}
	validates :price,	:numericality => {:greater_than_or_equal_to => 1}
	validates :name, uniqueness: true
	validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.'}

	def self.latest
		Commodity.order(:updated_at).last
	end

	private

	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
