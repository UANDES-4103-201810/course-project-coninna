class Project < ApplicationRecord
	has_many :promises
	belongs_to :user

	validates :title, :description, :category, :days_to_go, :goal_amount, :actual_money presence :true
	validates :goal_amount, numericality: { only_integer: true }
	validates :goal_amount, numericality: { greater_than: 0 }
	validates :actual_money, numericality: { only_integer: true }
	validates :actual_money, numericality: { greater_than: 0 }
	validates :days_to_go, numericality: { only_integer: true }
	validates :days_to_go, numericality: { greater_than: 0 }
	
end
