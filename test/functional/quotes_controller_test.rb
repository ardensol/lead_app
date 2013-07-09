require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, quote: { budget: @quote.budget, comments: @quote.comments, event_date: @quote.event_date, event_time: @quote.event_time, quote_type: @quote.quote_type, solicitation_type: @quote.solicitation_type, wedding_style: @quote.wedding_style, zip_code: @quote.zip_code }
    end

    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should show quote" do
    get :show, id: @quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote
    assert_response :success
  end

  test "should update quote" do
    put :update, id: @quote, quote: { budget: @quote.budget, comments: @quote.comments, event_date: @quote.event_date, event_time: @quote.event_time, quote_type: @quote.quote_type, solicitation_type: @quote.solicitation_type, wedding_style: @quote.wedding_style, zip_code: @quote.zip_code }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end
