module Spree
  class MessageCard < Spree::Base
    belongs_to :line_item, dependent: :destroy
    belongs_to :card_design
  end
end
