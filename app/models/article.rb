class Article < ActiveRecord::Base
	# Relationships
	has_many :category

	# Validations
	validates_presence_of :title, :content

	# Scopes
	scope :active, where('active = ?', true)
	scope :alphabetical, order('title')
end
