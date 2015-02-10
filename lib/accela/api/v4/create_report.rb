module Accela
  module V4
    class CreateReport < Base

      def call(id, query, payload)
        post("reports/#{id}/", :access_token, query, payload)
      end

    end
  end
end
