require 'test_helper'

class TimeOffCalendarsControllerTest < ActionController::TestCase
  setup do
    @time_off_calendar = time_off_calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_off_calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_off_calendar" do
    assert_difference('TimeOffCalendar.count') do
      post :create, time_off_calendar: { end_at: @time_off_calendar.end_at, id: @time_off_calendar.id, start_at: @time_off_calendar.start_at }
    end

    assert_redirected_to time_off_calendar_path(assigns(:time_off_calendar))
  end

  test "should show time_off_calendar" do
    get :show, id: @time_off_calendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_off_calendar
    assert_response :success
  end

  test "should update time_off_calendar" do
    put :update, id: @time_off_calendar, time_off_calendar: { end_at: @time_off_calendar.end_at, id: @time_off_calendar.id, start_at: @time_off_calendar.start_at }
    assert_redirected_to time_off_calendar_path(assigns(:time_off_calendar))
  end

  test "should destroy time_off_calendar" do
    assert_difference('TimeOffCalendar.count', -1) do
      delete :destroy, id: @time_off_calendar
    end

    assert_redirected_to time_off_calendars_path
  end
end
