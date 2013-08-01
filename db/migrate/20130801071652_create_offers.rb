class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :body
      t.references :promotion

      t.timestamps
    end
    add_index :offers, :promotion_id
  end
end
