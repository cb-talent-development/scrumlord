require 'test_helper'

class StandupTeamMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standup_team_member = standup_team_members(:one)
  end

  test "should get index" do
    get standup_team_members_url
    assert_response :success
  end

  test "should get new" do
    get new_standup_team_member_url
    assert_response :success
  end

  test "should create standup_team_member" do
    assert_difference('StandupTeamMember.count') do
      post standup_team_members_url, params: { standup_team_member: { standup_id: @standup_team_member.standup_id, team_member_id: @standup_team_member.team_member_id, today: @standup_team_member.today, yesterday: @standup_team_member.yesterday } }
    end

    assert_redirected_to standup_team_member_url(StandupTeamMember.last)
  end

  test "should show standup_team_member" do
    get standup_team_member_url(@standup_team_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_standup_team_member_url(@standup_team_member)
    assert_response :success
  end

  test "should update standup_team_member" do
    patch standup_team_member_url(@standup_team_member), params: { standup_team_member: { standup_id: @standup_team_member.standup_id, team_member_id: @standup_team_member.team_member_id, today: @standup_team_member.today, yesterday: @standup_team_member.yesterday } }
    assert_redirected_to standup_team_member_url(@standup_team_member)
  end

  test "should destroy standup_team_member" do
    assert_difference('StandupTeamMember.count', -1) do
      delete standup_team_member_url(@standup_team_member)
    end

    assert_redirected_to standup_team_members_url
  end
end
