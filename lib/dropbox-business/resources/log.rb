module DropboxForBusiness
  module Collections
    class Reports

      def initialize(connection)
        @connection = connection
      end

      # https://www.dropbox.com/developers/business/docs#log-get-events
      def get_events(params)
        @connection.post("/reports/get_events", params)
      end

    end
  end
end