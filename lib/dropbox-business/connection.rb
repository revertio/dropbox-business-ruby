module DropboxForBusiness
  class Connection
    include HTTParty
    base_uri 'https://api.dropbox.com/1/team'
    format :json
    #debug_output $stdout

    def initialize(oauth_token)
      @oauth_token = oauth_token
    end

    def get(url)
      self.class.get(url, { headers: request_headers })
    end

    def post(url, payload)
      options = {
        body: payload.to_json,
        headers: request_headers
      }

      response = self.class.post(url, options)
      response.parsed_response
    end

    private

    def request_headers
      headers = Hash.new
      headers["Content-Type"] = "application/json"
      headers["Authorization"] = "Bearer #{@oauth_token}"
      headers
    end

  end
end