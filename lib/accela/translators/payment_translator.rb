module Accela
  class PaymentTranslator < Translator

    def translation
      [
        [:amount, :amount, :double],
        [:credit_card, :creditCard, :CreditCard],
        [:currency, :currency, :string],
        [:entity_id, :entityId, :string],
        [:entity_type, :entityType, :string],
        [:amount, :amount, :double],
        [:payment_method, :paymentMethod, :string]
      ]
    end

  end
end