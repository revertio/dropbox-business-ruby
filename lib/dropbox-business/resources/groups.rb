module DropboxForBusiness
  module Collections
    class Groups

      def initialize(connection)
        @connection = connection
      end

      # https://www.dropbox.com/developers/business/docs#groups-list
      def list
        @connection.post("/groups/list", {})
      end

      # https://www.dropbox.com/developers/business/docs#groups-get-info
      def get_info(params)
        @connection.post("/groups/get_info", options)
      end

      # https://www.dropbox.com/developers/business/docs#groups-create
      def create(group)
        @connection.post("/groups/create", group)
      end

      # https://www.dropbox.com/developers/business/docs#groups-delete
      def delete(params)
        @connection.post("/groups/create", params)
      end

      # https://www.dropbox.com/developers/business/docs#groups-members-add
      def add_members(params)
        @connection.post("/groups/members/add", params)
      end

      # https://www.dropbox.com/developers/business/docs#groups-members-remove
      def remove_members(params)
        @connection.post("/groups/members/add", params)
      end

      # https://www.dropbox.com/developers/business/docs#groups-members-set-access-type
      def remove_members(params)
        @connection.post("/groups/members/add", params)
      end

    end
  end
end