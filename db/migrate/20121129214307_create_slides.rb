class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|

     t.integer :position
     t.integer :photo_id
     t.integer :slideshow_id 
    end
  end
end
