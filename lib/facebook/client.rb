module Facebook
  class Client

    def initialize
      @base_url = "http://graph.facebook.com/v2.8"
    end

    def get_user(fb_id)
      JSON.load(get("#{fb_id}", { access_token: ENV["FB_ACCESS_TOKEN"]} ))
    end

    def exchange_token
      
    end

    private

    def get(path, options{})
      conn = Faraday.new(@base_url)
      resp = conn.get(path, options)
      resp.body
    end

  end
end