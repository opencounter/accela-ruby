module Accela
  class CreditCardTranslator < Translator

    def translation
      [
        [:billing_address, :billingAddress, :BillingAddress],
        [:business_name, :businessName, :string],
        [:card_number, :cardNumber, :string],
        [:card_type, :cardType, :string],
        [:email, :email, :string],
        [:expiration_month, :expirationMonth, :string],
        [:expiration_year, :expirationYear, :string],
        [:holder_name, :holderName, :string],
        [:security_code, :securityCode, :string]
      ]
    end

  end
end
