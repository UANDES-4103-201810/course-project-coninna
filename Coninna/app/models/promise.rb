class Promise < ApplicationRecord
	belongs_to :project

	validate :delivery_date_cannot_be_in_the_past
	def delivery_date_cannot_be_in_the_past
		if delivery_date.present? && delivery_date < Date.today
			errors.add(:delivery_date)
		end
	end
	validates :amount, numericality: { only_integer: true }
	validates :amount, numericality: { greater_than: 0 }
end
