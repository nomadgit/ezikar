class AddImageUrlToKar < ActiveRecord::Migration
  def change
    add_column :kars, :image_url, :string
  end
end
