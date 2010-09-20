require 'integration_test_helper' 

class ClubTest < ActionController::IntegrationTest

  test "viewing clubs" do
    visit '/clubs'
    assert page.has_content?('Listing clubs')
  end

end
