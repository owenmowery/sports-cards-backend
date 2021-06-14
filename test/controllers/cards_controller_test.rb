require "test_helper"

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get cards_url, as: :json
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post cards_url, params: { card: { admin_id: @card.admin_id, card_img: @card.card_img, card_value: @card.card_value, league: @card.league, player_name: @card.player_name, player_team: @card.player_team, position: @card.position } }, as: :json
    end

    assert_response 201
  end

  test "should show card" do
    get card_url(@card), as: :json
    assert_response :success
  end

  test "should update card" do
    patch card_url(@card), params: { card: { admin_id: @card.admin_id, card_img: @card.card_img, card_value: @card.card_value, league: @card.league, player_name: @card.player_name, player_team: @card.player_team, position: @card.position } }, as: :json
    assert_response 200
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete card_url(@card), as: :json
    end

    assert_response 204
  end
end
