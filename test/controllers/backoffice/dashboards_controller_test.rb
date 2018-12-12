require 'test_helper'

class Backoffice::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_dashboards_index_url
    assert_response :success
  end

end
