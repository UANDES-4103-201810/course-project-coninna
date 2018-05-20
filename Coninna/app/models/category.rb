class Category < ApplicationRecord

  has_many :category_project
  has_many :projects, :through => :category_projects
end
