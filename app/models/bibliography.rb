class Bibliography < ActiveRecord::Base

	PUBLICATION_TYPES = ['Journal', 'Book', 'Internet', 'Thesis']

	scope :journal, -> {where("publication = ?","Journal")}
	scope :internet, -> {where("publication = ?","Internet")}
	scope :book, -> {where("publication = ?","Book")}
	scope :thesis, -> {where("publication = ?","Thesis")}

	validates :authors, :title, :firstsurname, :publication,  :presence => true
	validates :year,	:length => { :minimum => 4 }
	validates :isbn, allow_blank: true,  uniqueness: true

	def previous
		Bibliography.where(["id < ?", id]).last
	end

	def next
		Bibliography.where(["id > ?", id]).first
	end
end
