module Accela
  class BillingAddressTranslator < Translator

    def translation
      [
        [:address_line_1, :addressLine1, :string],
        [:address_line_2, :addressLine2, :string],
        [:address_line_3, :addressLine3, :string],
        [:city, :city, :string],
        [:country_code, :countryCode, :string],
        [:postal_code, :postalCode, :string],
        [:state, :state, :string]
      ]
    end

  end
end