require 'test_helper'

class ProfilControllerTest < ActionDispatch::IntegrationTest
  test "should get me" do
    get profil_me_url
    assert_response :success
  end

  test "should get update_me" do
    get profil_update_me_url
    assert_response :success
  end

end
