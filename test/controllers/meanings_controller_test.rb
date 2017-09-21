require 'test_helper'

class MeaningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meaning = meanings(:one)
  end

  test "should get index" do
    get meanings_url
    assert_response :success
  end

  test "should get new" do
    get new_meaning_url
    assert_response :success
  end

  test "should create meaning" do
    assert_difference('Meaning.count') do
      post meanings_url, params: { meaning: { meaning: @meaning.meaning } }
    end

    assert_redirected_to meaning_url(Meaning.last)
  end

  test "should show meaning" do
    get meaning_url(@meaning)
    assert_response :success
  end

  test "should get edit" do
    get edit_meaning_url(@meaning)
    assert_response :success
  end

  test "should update meaning" do
    patch meaning_url(@meaning), params: { meaning: { meaning: @meaning.meaning } }
    assert_redirected_to meaning_url(@meaning)
  end

  test "should destroy meaning" do
    assert_difference('Meaning.count', -1) do
      delete meaning_url(@meaning)
    end

    assert_redirected_to meanings_url
  end
end
