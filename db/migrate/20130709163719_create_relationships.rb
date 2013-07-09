class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :vendor_id
      t.integer :quote_id

      t.timestamps
    end

	add_index :relationships, :vendor_id
    add_index :relationships, :quote_id
    add_index :relationships, [:vendor_id, :quote_id], unique: true

  end
end
