class AddPriceToKar < ActiveRecord::Migration
  def change
    add_column :kars, :price, :string
  end
end
