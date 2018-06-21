require 'test_helper'

class BetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @betum = beta(:one)
  end

  test "should get index" do
    get beta_url
    assert_response :success
  end

  test "should get new" do
    get new_betum_url
    assert_response :success
  end

  test "should create betum" do
    assert_difference('Betum.count') do
      post beta_url, params: { betum: { age: @betum.age, name: @betum.name, phone: @betum.phone } }
    end

    assert_redirected_to betum_url(Betum.last)
  end

  test "should show betum" do
    get betum_url(@betum)
    assert_response :success
  end

  test "should get edit" do
    get edit_betum_url(@betum)
    assert_response :success
  end

  test "should update betum" do
    patch betum_url(@betum), params: { betum: { age: @betum.age, name: @betum.name, phone: @betum.phone } }
    assert_redirected_to betum_url(@betum)
  end

  test "should destroy betum" do
    assert_difference('Betum.count', -1) do
      delete betum_url(@betum)
    end

    assert_redirected_to beta_url
  end
end
