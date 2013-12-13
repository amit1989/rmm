require 'test_helper'

class PanelMembersControllerTest < ActionController::TestCase
  setup do
    @panel_member = panel_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_member" do
    assert_difference('PanelMember.count') do
      post :create, panel_member: { contactno: @panel_member.contactno, designation: @panel_member.designation, detail: @panel_member.detail, email: @panel_member.email, membershipno: @panel_member.membershipno, name: @panel_member.name }
    end

    assert_redirected_to panel_member_path(assigns(:panel_member))
  end

  test "should show panel_member" do
    get :show, id: @panel_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_member
    assert_response :success
  end

  test "should update panel_member" do
    put :update, id: @panel_member, panel_member: { contactno: @panel_member.contactno, designation: @panel_member.designation, detail: @panel_member.detail, email: @panel_member.email, membershipno: @panel_member.membershipno, name: @panel_member.name }
    assert_redirected_to panel_member_path(assigns(:panel_member))
  end

  test "should destroy panel_member" do
    assert_difference('PanelMember.count', -1) do
      delete :destroy, id: @panel_member
    end

    assert_redirected_to panel_members_path
  end
end
