module DropboxForBusiness
  class Client

    attr_accessor :connection

    def initialize(oauth_token)
      @connection = DropboxForBusiness::Connection.new(oauth_token)
    end

    def info
      @connection.post("/get_info", {})
    end

    def members
      @members ||= Collections::Members.new(connection)
    end

    def groups
      @groups ||= Collections::Groups.new(connection)
    end

    def reports
      @reports ||= Collections::Reports.new(connection)
    end

    def log
      @log ||= Collections::Log.new(connection)
    end

  end

end