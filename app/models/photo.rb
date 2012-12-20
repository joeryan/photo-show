class Photo < ActiveRecord::Base
  validates :filename, :presence => true
  attr_accessible :filename, :thumbnail, :description
  has_many :slides
  has_and_belongs_to_many :categories
	
end
