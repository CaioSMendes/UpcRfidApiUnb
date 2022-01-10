require 'test_helper'

class BluetoothsearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bluetoothsearch = bluetoothsearches(:one)
  end

  test "should get index" do
    get bluetoothsearches_url, as: :json
    assert_response :success
  end

  test "should create bluetoothsearch" do
    assert_difference('Bluetoothsearch.count') do
      post bluetoothsearches_url, params: { bluetoothsearch: { rfidCode: @bluetoothsearch.rfidCode } }, as: :json
    end

    assert_response 201
  end

  test "should show bluetoothsearch" do
    get bluetoothsearch_url(@bluetoothsearch), as: :json
    assert_response :success
  end

  test "should update bluetoothsearch" do
    patch bluetoothsearch_url(@bluetoothsearch), params: { bluetoothsearch: { rfidCode: @bluetoothsearch.rfidCode } }, as: :json
    assert_response 200
  end

  test "should destroy bluetoothsearch" do
    assert_difference('Bluetoothsearch.count', -1) do
      delete bluetoothsearch_url(@bluetoothsearch), as: :json
    end

    assert_response 204
  end
end
