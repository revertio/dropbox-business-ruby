module DropboxForBusiness
  module Collections
    class Reports

      def initialize(connection)
        @connection = connection
      end

      # https://www.dropbox.com/developers/business/docs#reports-get-storage
      def get_storage(params)
        @connection.post("/reports/get_storage", params)
      end

      # https://www.dropbox.com/developers/business/docs#reports-get-activity
      def get_activity(params)
        @connection.post("/reports/get_activity", params)
      end

      # https://www.dropbox.com/developers/business/docs#reports-get-membership
      def get_membership(params)
        @connection.post("/reports/get_membership", params)
      end

      def get_devices(params)
        @connection.post("/reports/get_devices", params)
      end

    end
  end
end