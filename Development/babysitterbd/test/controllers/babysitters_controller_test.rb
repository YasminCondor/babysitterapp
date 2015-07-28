require 'test_helper'

class BabysittersControllerTest < ActionController::TestCase
  setup do
    @babysitter = babysitters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:babysitters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create babysitter" do
    assert_difference('Babysitter.count') do
      post :create, babysitter: { district_id: @babysitter.district_id, document: @babysitter.document, email: @babysitter.email, lastname: @babysitter.lastname, maxcount: @babysitter.maxcount, name: @babysitter.name, password: @babysitter.password, phone: @babysitter.phone, resume: @babysitter.resume, startdate: @babysitter.startdate }
    end

    assert_redirected_to babysitter_path(assigns(:babysitter))
  end

  test "should show babysitter" do
    get :show, id: @babysitter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @babysitter
    assert_response :success
  end

  test "should update babysitter" do
    patch :update, id: @babysitter, babysitter: { district_id: @babysitter.district_id, document: @babysitter.document, email: @babysitter.email, lastname: @babysitter.lastname, maxcount: @babysitter.maxcount, name: @babysitter.name, password: @babysitter.password, phone: @babysitter.phone, resume: @babysitter.resume, startdate: @babysitter.startdate }
    assert_redirected_to babysitter_path(assigns(:babysitter))
  end

  test "should destroy babysitter" do
    assert_difference('Babysitter.count', -1) do
      delete :destroy, id: @babysitter
    end

    assert_redirected_to babysitters_path
  end
end
