class PrepareImagesRename < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :image, :image_data
  end
end
