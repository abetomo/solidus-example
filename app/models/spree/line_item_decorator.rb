Spree::LineItem.class_eval {
  has_many :message_card
  accepts_nested_attributes_for :message_card
}
