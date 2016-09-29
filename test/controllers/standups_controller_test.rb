require 'test_helper'

class StandupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standup = standups(:one)
  end

  test "should get index" do
    get standups_url
    assert_response :success
  end

  test "should get new" do
    get new_standup_url
    assert_response :success
  end

  test "should create standup" do
    assert_difference('Standup.count') do
      post standups_url, params: { standup: { comments: @standup.comments, date: @standup.date, meetings: @standup.meetings, team_id: @standup.team_id } }
    end

    assert_redirected_to standup_url(Standup.last)
  end

  test "should show standup" do
    get standup_url(@standup)
    assert_response :success
  end

  test "should get edit" do
    get edit_standup_url(@standup)
    assert_response :success
  end

  test "should update standup" do
    patch standup_url(@standup), params: { standup: { comments: @standup.comments, date: @standup.date, meetings: @standup.meetings, team_id: @standup.team_id } }
    assert_redirected_to standup_url(@standup)
  end

  test "should destroy standup" do
    assert_difference('Standup.count', -1) do
      delete standup_url(@standup)
    end

    assert_redirected_to standups_url
  end
end
