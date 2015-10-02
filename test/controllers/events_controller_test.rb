require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { company_id: @event.company_id, end_date: @event.end_date, facebook: @event.facebook, general_hashtag: @event.general_hashtag, instagram: @event.instagram, internal_hashtag: @event.internal_hashtag, linked_in: @event.linked_in, location: @event.location, name: @event.name, short_summary: @event.short_summary, start_date: @event.start_date, twitter: @event.twitter, website: @event.website, youtube: @event.youtube }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { company_id: @event.company_id, end_date: @event.end_date, facebook: @event.facebook, general_hashtag: @event.general_hashtag, instagram: @event.instagram, internal_hashtag: @event.internal_hashtag, linked_in: @event.linked_in, location: @event.location, name: @event.name, short_summary: @event.short_summary, start_date: @event.start_date, twitter: @event.twitter, website: @event.website, youtube: @event.youtube }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
