module DropboxForBusiness
  module Collections
    class Members
      def initialize(connection)
        @connection = connection
      end

      def list(limit=1000, cursor=nil)
        opts = {
          limit: limit
        }
        opts.merge({cursor: cursor}) if cursor

        @connection.post("/members/list", opts)
      end

      def info(id)
        @connection.post("/members/get_info", { member_id: id })
      end

      def info_batch(ids)
        @connection.post("/members/get_info_batch", { member_ids: ids })
      end

      def add(email, first_name, last_name, send_welcome_email=true, external_id=nil)
        opts = {
          "member_email": "jenny@example.com",
          "member_given_name": "Jenny",
          "member_surname": "User",
          "send_welcome_email": true
        }
        opts.merge({member_external_id: external_id}) if external_id

        @connection.post("/members/add", opts)
      end

    end
  end
end