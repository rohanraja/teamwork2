require 'rails_helper'

RSpec.describe "Testsuites", type: :request do
  describe "GET /testsuites" do
    it "works! (now write some real specs)" do
      get testsuites_path
      expect(response).to have_http_status(200)
    end
  end
end
