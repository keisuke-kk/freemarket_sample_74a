class AddShippingIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :shipping_id, :integer
  end
end
