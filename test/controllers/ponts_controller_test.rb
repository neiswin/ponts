require "test_helper"

class PontsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pont = ponts(:one)
  end

  test "should get index" do
    get ponts_url
    assert_response :success
  end

  test "should get new" do
    get new_pont_url
    assert_response :success
  end

  test "should create pont" do
    assert_difference("Pont.count") do
      post ponts_url, params: { pont: { body: @pont.body } }
    end

    assert_redirected_to pont_url(Pont.last)
  end

  test "should show pont" do
    get pont_url(@pont)
    assert_response :success
  end

  test "should get edit" do
    get edit_pont_url(@pont)
    assert_response :success
  end

  test "should update pont" do
    patch pont_url(@pont), params: { pont: { body: @pont.body } }
    assert_redirected_to pont_url(@pont)
  end

  test "should destroy pont" do
    assert_difference("Pont.count", -1) do
      delete pont_url(@pont)
    end

    assert_redirected_to ponts_url
  end
end
