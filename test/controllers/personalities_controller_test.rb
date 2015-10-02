require 'test_helper'

class PersonalitiesControllerTest < ActionController::TestCase
  setup do
    @personality = personalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personality" do
    assert_difference('Personality.count') do
      post :create, personality: { company_id: @personality.company_id, facebook: @personality.facebook, instagram: @personality.instagram, linked_in: @personality.linked_in, name: @personality.name, position_id: @personality.position_id, short_summary: @personality.short_summary, twitter: @personality.twitter, website: @personality.website, youtube: @personality.youtube }
    end

    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should show personality" do
    get :show, id: @personality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personality
    assert_response :success
  end

  test "should update personality" do
    patch :update, id: @personality, personality: { company_id: @personality.company_id, facebook: @personality.facebook, instagram: @personality.instagram, linked_in: @personality.linked_in, name: @personality.name, position_id: @personality.position_id, short_summary: @personality.short_summary, twitter: @personality.twitter, website: @personality.website, youtube: @personality.youtube }
    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should destroy personality" do
    assert_difference('Personality.count', -1) do
      delete :destroy, id: @personality
    end

    assert_redirected_to personalities_path
  end
end
