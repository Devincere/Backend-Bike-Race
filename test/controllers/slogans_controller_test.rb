require "test_helper"

class SlogansControllerTest < ActionDispatch::IntegrationTest


  setup do
    @slogan = slogans(:one)
    @slogan_fail =  slogans(:two)
  end

  test "the truth" do
    assert true
  end

  test "should get index" do
    get slogans_url
    assert_response :success
  end 

  test "slogan should save" do
    assert Slogan.new(firstName: @slogan.firstName, lastName: @slogan.lastName, email: @slogan.email, suggestion: @slogan.suggestion)
  end

  test "slogan should NOT save" do
    assert Slogan.new(firstName: @slogan.firstName, lastName: @slogan.lastName, suggestion: @slogan.suggestion)
  end
   
end
