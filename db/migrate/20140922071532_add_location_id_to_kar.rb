class AddLocationIdToKar < ActiveRecord::Migration
  def change
    add_column :kars, :location_id, :integer
  end
end
