class Recipe < ApplicationRecord
	belongs_to :user

	validates :description, presence: true, length: { in: 25..500}
	validates :name, presence: true, length: { in: 4..100}
	validates :user_id, presence: true
end