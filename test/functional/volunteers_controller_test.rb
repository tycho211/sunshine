require 'test_helper'

class VolunteersControllerTest < ActionController::TestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post :create, volunteer: { address: @volunteer.address, county: @volunteer.county, email: @volunteer.email, hours: @volunteer.hours, name: @volunteer.name, phone: @volunteer.phone }
    end

    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should show volunteer" do
    get :show, id: @volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer
    assert_response :success
  end

  test "should update volunteer" do
    put :update, id: @volunteer, volunteer: { address: @volunteer.address, county: @volunteer.county, email: @volunteer.email, hours: @volunteer.hours, name: @volunteer.name, phone: @volunteer.phone }
    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete :destroy, id: @volunteer
    end

    assert_redirected_to volunteers_path
  end
end