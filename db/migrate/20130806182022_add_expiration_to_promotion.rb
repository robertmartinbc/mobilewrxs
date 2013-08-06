class AddExpirationToPromotion < ActiveRecord::Migration
  def change
    add_column :promotions, :expiration, :string
  end
end
