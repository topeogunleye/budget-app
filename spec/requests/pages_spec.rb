require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "/pages/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /categories" do
    it "returns http success" do
      get "/pages/categories"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /transactions" do
    it "returns http success" do
      get "/pages/transactions"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /sessions" do
    it "returns http success" do
      get "/pages/sessions"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /categories_new" do
    it "returns http success" do
      get "/pages/categories_new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /transactions_new" do
    it "returns http success" do
      get "/pages/transactions_new"
      expect(response).to have_http_status(:success)
    end
  end

end
