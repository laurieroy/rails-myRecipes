class Recipe < ApplicationRecord
	validates :description, presence: true, length: { in: 25..500}
	validates :name, presence: true, length: { in: 3..100}
	
	belongs_to :user
end