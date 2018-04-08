require 'rails_helper'

RSpec.describe "Testcases", type: :request do
  describe "GET /testcases" do
    it "works! (now write some real specs)" do
      get testcases_path
      expect(response).to have_http_status(200)
    end
  end
end
