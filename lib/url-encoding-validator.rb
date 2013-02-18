module UrlEncodingValidator
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      if decodeable_url_component?(env["QUERY_STRING"])
        @app.call(env)
      else
        respond_with_bad_request
      end
    end

    private

    def decodeable_url_component?(component)
      return true unless component
      /\A[^%]*(?:%\h\h[^%]*)*\z/ =~ component ? true : false
    end

    def respond_with_bad_request
      [400, {"Content-Type" => "text/html;", "Content-Length" => "0"}, []]
    end
  end
end
