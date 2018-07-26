class AddCardIdToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_line_items, :card_id, :integer
    add_index :spree_line_items, :card_id
  end
end
