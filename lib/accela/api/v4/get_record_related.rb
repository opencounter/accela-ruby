module Accela
  module V4
    class GetRecordsRelated < Base

      def call(id, *args)
        get("records/#{id}/related", :access_token, *args)
      end

    end
  end
end