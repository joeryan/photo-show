class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|

     t.position, :integer
     t.photo_id, :integer
     t.slideshow_id, :integer 
    end
  end
end
