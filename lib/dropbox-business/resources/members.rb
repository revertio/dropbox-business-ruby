module DropboxForBusiness
  module Collections
    class Members

      def initialize(connection)
        @connection = connection
      end

      # https://www.dropbox.com/developers/business/docs#members-list
      def list(params)
        @connection.post("/members/list", params)
      end

      # https://www.dropbox.com/developers/business/docs#members-get-info
      def get_info(params)
        @connection.post("/members/get_info", params)
      end

      # https://www.dropbox.com/developers/business/docs#members-get-info-batch
      def get_info_batch(params)
        @connection.post("/members/get_info_batch", params)
      end

      # https://www.dropbox.com/developers/business/docs#members-add
      def add(params)
        @connection.post("/members/add", params)
      end

      # https://www.dropbox.com/developers/business/docs#members-set-profile
      def set_profile(params)
        @connection.post("/members/set_profile", params)
      end

      # https://api.dropbox.com/1/team/members/set_permissions
      def set_permissions(params)
        @connection.post("/members/set_permissions", params)
      end

      # https://www.dropbox.com/developers/business/docs#members-remove
      def remove(params)
        @connection.post("/members/remove", params)
      end

    end
  end
end