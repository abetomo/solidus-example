module Spree
  class Order
    checkout_flow do
      go_to_state :address
      go_to_state :delivery
      go_to_state :message_card
      go_to_state :payment, if: ->(order) { order.payment_required? }
      go_to_state :confirm
    end
  end
end
