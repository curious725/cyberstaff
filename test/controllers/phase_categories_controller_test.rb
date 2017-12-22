require 'test_helper'

class PhaseCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phase_category = phase_categories(:one)
  end

  test "should get index" do
    get phase_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_phase_category_url
    assert_response :success
  end

  test "should create phase_category" do
    assert_difference('PhaseCategory.count') do
      post phase_categories_url, params: { phase_category: {  } }
    end

    assert_redirected_to phase_category_url(PhaseCategory.last)
  end

  test "should show phase_category" do
    get phase_category_url(@phase_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_phase_category_url(@phase_category)
    assert_response :success
  end

  test "should update phase_category" do
    patch phase_category_url(@phase_category), params: { phase_category: {  } }
    assert_redirected_to phase_category_url(@phase_category)
  end

  test "should destroy phase_category" do
    assert_difference('PhaseCategory.count', -1) do
      delete phase_category_url(@phase_category)
    end

    assert_redirected_to phase_categories_url
  end
end
