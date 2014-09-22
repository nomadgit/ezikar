class CreateKars < ActiveRecord::Migration
  def change
    create_table :kars do |t|
      t.string :title
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
