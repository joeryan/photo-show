class CreateCategories < ActiveRecord::Migration
  def change
    create_table "categories" do |t|
	t.column "name", :string
	t.column "parent_id", :integer

    end
    
    create_table("categories_photos", :id=>false) do |t|
	t.column "category_id", :integer
	t.column "photo_id", :integer
    end

    Category.new do |category|
	category.name="All"
	Photo.find(:all).each do |photo|
	photo.categories << category
	photo.save
	end
    end
  end
end
