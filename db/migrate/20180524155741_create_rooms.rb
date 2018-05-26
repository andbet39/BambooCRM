class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :shortname
      t.integer :occupancy
      t.integer :men
      t.integer :adults
      t.integer :children
      t.integer :subroom
      t.integer :anchorate
      t.float :price
      t.integer :availability
      t.string :board
      t.string :boards
      t.integer :rtype
      t.string :rtype_name
      t.integer :dec_avail
      t.integer :min_price
      t.integer :max_price
      t.integer :woodoo

      t.timestamps
    end
  end
end
