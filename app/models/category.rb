class Category < ActiveRecord::Base
  # attr_accessible :title, :body
	has_and_belongs_to_many :photos
	acts_as_tree
end
