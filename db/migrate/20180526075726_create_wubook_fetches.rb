class CreateWubookFetches < ActiveRecord::Migration[5.1]
  def change
    create_table :wubook_fetches do |t|
      t.integer :outcome
      t.text :raw
      t.boolean :processed

      t.timestamps
    end
  end
end
