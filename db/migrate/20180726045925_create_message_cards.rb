class CreateMessageCards < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_message_cards, id: :integer do |t|
      t.integer :line_item_id
      t.integer :card_design_id
      t.text :message

      t.timestamps
    end

    create_table :spree_card_designs, id: :integer do |t|
      t.string :name

      t.timestamps
    end

    add_foreign_key :spree_message_cards, :spree_line_items, column: :line_item_id
    add_foreign_key :spree_message_cards, :spree_card_designs, column: :card_design_id
  end
end
