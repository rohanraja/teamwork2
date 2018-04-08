require 'rails_helper'

RSpec.describe "Checklistitems", type: :request do
  describe "GET /checklistitems" do
    it "works! (now write some real specs)" do
      get checklistitems_path
      expect(response).to have_http_status(200)
    end
  end
end
