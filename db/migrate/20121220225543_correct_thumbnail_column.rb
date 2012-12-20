class CorrectThumbnailColumn < ActiveRecord::Migration
  def up
	remove_column :photos, :tumbnail
  end

  def down
	add_column :photos, :tumbnail
  end
end
