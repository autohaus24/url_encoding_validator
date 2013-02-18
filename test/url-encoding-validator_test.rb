require 'test_helper'

class UrlEncodingValidatorTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, UrlEncodingValidator
  end

  test "return 400 response when query_string contains invalid percent encoding" do
    assert_equal 400, UrlEncodingValidator::Middleware.new(stub).call({"QUERY_STRING" => "foobar%"}).first
  end

  test "app should receive call when params are valid" do
    params = {"QUERY_STRING" => "foobar"}
    app = stub
    app.expects(:call).with params
    UrlEncodingValidator::Middleware.new(app).call(params)
  end
end
