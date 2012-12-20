class RemoveTubnailFromPhotos < ActiveRecord::Migration
  def up
	remove_column :photos, :tubnail
  end

  def down
	add_column :photos, :tubnail
  end
end
