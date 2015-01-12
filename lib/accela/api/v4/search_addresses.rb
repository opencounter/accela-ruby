module Accela
  module V4
    class SearchAddresses < Base

      def call(query = {}, payload)
        post("search/addresses", :access_token, query, payload)
      end

    end
  end
end