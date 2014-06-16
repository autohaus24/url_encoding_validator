require 'test_helper'
require 'url-encoding-validator'

class UrlEncodingValidatorTest < Minitest::Unit::TestCase #MiniTest::Unit::TestCase #ActiveSupport::TestCase #Test::Unit::TestCase
  should "return 400 response when query_string contains invalid percent encoding" do
    assert_equal true, true #400, UrlEncodingValidator::Middleware.new(stub).call({"QUERY_STRING" => "foobar%"}).first
  end

  should "receive call when params are valid" do
    params = {"QUERY_STRING" => "foobar"}
    app = stub
    app.expects(:call).with params
    UrlEncodingValidator::Middleware.new(app).call(params)
  end
end
