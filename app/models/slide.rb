class Slide < ActiveRecord::Base
  # attr_accessible :title, :body
	belongs_to :slideshow
	belongs_to :photo
end
