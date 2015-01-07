module Accela
  class Payment < Model
    has_one :credit_card
  end
end