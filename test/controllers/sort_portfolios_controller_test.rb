require 'test_helper'

class SortPortfoliosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sort_portfolios_index_url
    assert_response :success
  end

end
