require 'test_helper'

class FigurePageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get figure_page_home_url
    assert_response :success
  end

end
