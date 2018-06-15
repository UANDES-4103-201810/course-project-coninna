class Project < ApplicationRecord
	has_many :promises
	belongs_to :user
	has_many :category_projects
	has_many :categories, :through => :category_projects

	has_many :show_my_wishlist
	
	has_attached_file :photo, styles: { medium:"300x300>"}

	validates :title, :description, :days_to_go, :goal_amount, :actual_money, presence: true
	validates :goal_amount, numericality: { only_integer: true }
	validates :goal_amount, numericality: { greater_than: 0 }
	validates :actual_money, numericality: { only_integer: true }
	validates :actual_money, numericality: { greater_than: 0 }
	validates :days_to_go, numericality: { only_integer: true }
	validates :days_to_go, numericality: { greater_than: 0 }
	validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  def self.search(search)
    if search
      where("title LIKE ? or description LIKE ?", "%#{search}%", "%#{search}%") 
      
    else
      all
    end
    
  end
 

end
