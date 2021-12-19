class PrepareImagesProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :image, :text
    rename_column :products, :image, :image_data
  end
end
