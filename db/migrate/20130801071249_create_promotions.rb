class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :body
      t.float :price

      t.timestamps
    end
  end
end
