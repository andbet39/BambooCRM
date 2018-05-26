require 'test_helper'

class WubookFetchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wubook_fetch = wubook_fetches(:one)
  end

  test "should get index" do
    get wubook_fetches_url
    assert_response :success
  end

  test "should get new" do
    get new_wubook_fetch_url
    assert_response :success
  end

  test "should create wubook_fetch" do
    assert_difference('WubookFetch.count') do
      post wubook_fetches_url, params: { wubook_fetch: { outcome: @wubook_fetch.outcome, processed: @wubook_fetch.processed, raw: @wubook_fetch.raw } }
    end

    assert_redirected_to wubook_fetch_url(WubookFetch.last)
  end

  test "should show wubook_fetch" do
    get wubook_fetch_url(@wubook_fetch)
    assert_response :success
  end

  test "should get edit" do
    get edit_wubook_fetch_url(@wubook_fetch)
    assert_response :success
  end

  test "should update wubook_fetch" do
    patch wubook_fetch_url(@wubook_fetch), params: { wubook_fetch: { outcome: @wubook_fetch.outcome, processed: @wubook_fetch.processed, raw: @wubook_fetch.raw } }
    assert_redirected_to wubook_fetch_url(@wubook_fetch)
  end

  test "should destroy wubook_fetch" do
    assert_difference('WubookFetch.count', -1) do
      delete wubook_fetch_url(@wubook_fetch)
    end

    assert_redirected_to wubook_fetches_url
  end
end
