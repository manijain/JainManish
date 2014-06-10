require 'test_helper'

class RequestFormsControllerTest < ActionController::TestCase
  setup do
    @request_form = request_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_form" do
    assert_difference('RequestForm.count') do
      post :create, request_form: { email: @request_form.email, message: @request_form.message, name: @request_form.name }
    end

    assert_redirected_to request_form_path(assigns(:request_form))
  end

  test "should show request_form" do
    get :show, id: @request_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_form
    assert_response :success
  end

  test "should update request_form" do
    patch :update, id: @request_form, request_form: { email: @request_form.email, message: @request_form.message, name: @request_form.name }
    assert_redirected_to request_form_path(assigns(:request_form))
  end

  test "should destroy request_form" do
    assert_difference('RequestForm.count', -1) do
      delete :destroy, id: @request_form
    end

    assert_redirected_to request_forms_path
  end
end
