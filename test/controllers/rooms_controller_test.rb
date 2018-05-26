require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { adults: @room.adults, anchorate: @room.anchorate, availability: @room.availability, board: @room.board, boards: @room.boards, children: @room.children, dec_avail: @room.dec_avail, max_price: @room.max_price, men: @room.men, min_price: @room.min_price, name: @room.name, occupancy: @room.occupancy, price: @room.price, rtype: @room.rtype, rtype_name: @room.rtype_name, shortname: @room.shortname, subroom: @room.subroom, woodoo: @room.woodoo } }
    end

    assert_redirected_to room_url(Room.last)
  end

  test "should show room" do
    get room_url(@room)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { adults: @room.adults, anchorate: @room.anchorate, availability: @room.availability, board: @room.board, boards: @room.boards, children: @room.children, dec_avail: @room.dec_avail, max_price: @room.max_price, men: @room.men, min_price: @room.min_price, name: @room.name, occupancy: @room.occupancy, price: @room.price, rtype: @room.rtype, rtype_name: @room.rtype_name, shortname: @room.shortname, subroom: @room.subroom, woodoo: @room.woodoo } }
    assert_redirected_to room_url(@room)
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end
end
