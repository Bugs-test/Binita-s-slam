require 'test_helper'

class SlambinitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slambinitum = slambinita(:one)
  end

  test "should get index" do
    get slambinita_url
    assert_response :success
  end

  test "should get new" do
    get new_slambinitum_url
    assert_response :success
  end

  test "should create slambinitum" do
    assert_difference('Slambinitum.count') do
      post slambinita_url, params: { slambinitum: { birthday: @slambinitum.birthday, email: @slambinitum.email, follow: @slambinitum.follow, memory: @slambinitum.memory, name: @slambinitum.name, picture: @slambinitum.picture, quote: @slambinitum.quote, thoughts: @slambinitum.thoughts, whatsapp: @slambinitum.whatsapp } }
    end

    assert_redirected_to slambinitum_url(Slambinitum.last)
  end

  test "should show slambinitum" do
    get slambinitum_url(@slambinitum)
    assert_response :success
  end

  test "should get edit" do
    get edit_slambinitum_url(@slambinitum)
    assert_response :success
  end

  test "should update slambinitum" do
    patch slambinitum_url(@slambinitum), params: { slambinitum: { birthday: @slambinitum.birthday, email: @slambinitum.email, follow: @slambinitum.follow, memory: @slambinitum.memory, name: @slambinitum.name, picture: @slambinitum.picture, quote: @slambinitum.quote, thoughts: @slambinitum.thoughts, whatsapp: @slambinitum.whatsapp } }
    assert_redirected_to slambinitum_url(@slambinitum)
  end

  test "should destroy slambinitum" do
    assert_difference('Slambinitum.count', -1) do
      delete slambinitum_url(@slambinitum)
    end

    assert_redirected_to slambinita_url
  end
end
