require 'test_helper'

class VoteSmsControllerTest < ActionController::TestCase
  setup do
    @vote_sm = vote_sms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_sms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_sm" do
    assert_difference('VoteSm.count') do
      post :create, vote_sm: { choice: @vote_sm.choice, compaign_name: @vote_sm.compaign_name, conn: @vote_sm.conn, guid: @vote_sm.guid, msisdn: @vote_sm.msisdn, short_code: @vote_sm.short_code, validity: @vote_sm.validity, vote_number: @vote_sm.vote_number }
    end

    assert_redirected_to vote_sm_path(assigns(:vote_sm))
  end

  test "should show vote_sm" do
    get :show, id: @vote_sm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_sm
    assert_response :success
  end

  test "should update vote_sm" do
    patch :update, id: @vote_sm, vote_sm: { choice: @vote_sm.choice, compaign_name: @vote_sm.compaign_name, conn: @vote_sm.conn, guid: @vote_sm.guid, msisdn: @vote_sm.msisdn, short_code: @vote_sm.short_code, validity: @vote_sm.validity, vote_number: @vote_sm.vote_number }
    assert_redirected_to vote_sm_path(assigns(:vote_sm))
  end

  test "should destroy vote_sm" do
    assert_difference('VoteSm.count', -1) do
      delete :destroy, id: @vote_sm
    end

    assert_redirected_to vote_sms_path
  end
end
