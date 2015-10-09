require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  test 'should get matches' do
  get :show
  assert_response :success
  # test "the truth" do
  #   assert true
  # end
    end
end
