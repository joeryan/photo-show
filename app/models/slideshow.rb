class Slideshow < ActiveRecord::Base
  # attr_accessible :title, :body
	has_many :slides
end
