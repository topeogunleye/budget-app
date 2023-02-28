require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET /home' do
    it 'returns http success' do
      get '/pages/home'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /categories' do
    it 'returns http success' do
      get '/pages/categories'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /expenditures' do
    it 'returns http success' do
      get '/pages/expenditures'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /sessions' do
    it 'returns http success' do
      get '/pages/sessions'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /categories_new' do
    it 'returns http success' do
      get '/pages/categories_new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /expenditures_new' do
    it 'returns http success' do
      get '/pages/expenditures_new'
      expect(response).to have_http_status(:success)
    end
  end
end
