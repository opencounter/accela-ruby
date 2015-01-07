module Accela
  module V4
    class CreatePayment < Base

      def call(payload)
        post("payments", :access_token, {}, payload)
      end

    end
  end
end