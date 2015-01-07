module Accela
  class CreditCard < Model
    has_one :billing_address
  end
end