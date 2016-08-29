require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  setup do
    @schedule = schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, schedule: { backup_ct: @schedule.backup_ct, class_name: @schedule.class_name, course_name: @schedule.course_name, ct_assigned: @schedule.ct_assigned, end: @schedule.end, hours: @schedule.hours, in_hst: @schedule.in_hst, location: @schedule.location, specialty: @schedule.specialty, start: @schedule.start }
    end

    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should show schedule" do
    get :show, id: @schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule
    assert_response :success
  end

  test "should update schedule" do
    patch :update, id: @schedule, schedule: { backup_ct: @schedule.backup_ct, class_name: @schedule.class_name, course_name: @schedule.course_name, ct_assigned: @schedule.ct_assigned, end: @schedule.end, hours: @schedule.hours, in_hst: @schedule.in_hst, location: @schedule.location, specialty: @schedule.specialty, start: @schedule.start }
    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete :destroy, id: @schedule
    end

    assert_redirected_to schedules_path
  end
end
