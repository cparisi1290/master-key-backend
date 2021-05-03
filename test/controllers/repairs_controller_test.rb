require "test_helper"

class RepairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair = repairs(:one)
  end

  test "should get index" do
    get repairs_url, as: :json
    assert_response :success
  end

  test "should create repair" do
    assert_difference('Repair.count') do
      post repairs_url, params: { repair: { brokedn_item: @repair.brokedn_item, closed?: @repair.closed?, cost: @repair.cost, date_completed: @repair.date_completed, property_id: @repair.property_id, room: @repair.room } }, as: :json
    end

    assert_response 201
  end

  test "should show repair" do
    get repair_url(@repair), as: :json
    assert_response :success
  end

  test "should update repair" do
    patch repair_url(@repair), params: { repair: { brokedn_item: @repair.brokedn_item, closed?: @repair.closed?, cost: @repair.cost, date_completed: @repair.date_completed, property_id: @repair.property_id, room: @repair.room } }, as: :json
    assert_response 200
  end

  test "should destroy repair" do
    assert_difference('Repair.count', -1) do
      delete repair_url(@repair), as: :json
    end

    assert_response 204
  end
end
