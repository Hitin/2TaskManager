require 'test_helper'

class Admin::UsersControllerTest < ActionController::TestCase
  setup do
    admin = create(:admin)
    sign_in admin
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get show' do
    user = create(:user)
    get :show, params: { id: user.id }
    assert_response :success
  end

  test 'should get edit' do
    user = create(:user)
    get :edit, params: { id: user.id }
    assert_response :success
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    post :create, params: { user: attributes_for(:user) }
    assert_response :redirect
  end

  test 'should patch update' do
    user = create(:user)
    patch :update, params: { id: user.id, user: attributes_for(:user) }
    assert_response :redirect
  end

  test 'should delete destroy' do
    user = create(:user)
    delete :destroy, params: { id: user.id }
    assert_response :redirect
  end
end
