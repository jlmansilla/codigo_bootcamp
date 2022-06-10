require 'minitest/autorun'
require './main'
require 'json'

class TestRestClient < MiniTest::Test
    def setup
        @client = MyRestClient.new
    end

    def test_get_todo
        response = @client.get('https://jsonplaceholder.typicode.com/todos/1')
        payload = JSON.parse(response)

        assert_equal 200, response.code
        assert_equal 1, payload['id']
    end
end