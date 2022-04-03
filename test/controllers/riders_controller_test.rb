require "test_helper"

class RidersControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    @rider = riders(:one)
    @rider_fail = riders(:two)
  end

  test "should get index" do
    get riders_url
    assert_response :success
  end

  test "riders should NOT be nil" do
    assert_not_nil Rider.new(firstName: @rider.firstName, lastName: @rider.lastName, city: @rider.city, state: @rider.state, position: @rider.position)
  end
  
end