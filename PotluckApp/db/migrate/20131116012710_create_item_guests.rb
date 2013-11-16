class CreateItemGuests < ActiveRecord::Migration
  def change
    create_table :item_guests do |t|
      t.references :item, index: true
      t.references :guest, index: true

      t.timestamps
    end
  end
end
