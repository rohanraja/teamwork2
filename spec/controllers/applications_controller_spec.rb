require 'rails_helper'

RSpec.describe ApplicationsController, type: :controller do

  describe "GET #component_list" do
    it "returns http success" do
      get :component_list
      expect(response).to have_http_status(:success)
    end
  end

end
