class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.string :unit
      t.references :category, index: true

      t.timestamps
    end
  end
end
