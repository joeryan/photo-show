class CreatePhotos < ActiveRecord::Migration
  def change
    update_table :photos do |t|
      t.string :filename
      t.timestamps
	
    end
  end
end
