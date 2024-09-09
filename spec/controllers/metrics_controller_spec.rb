require 'rails_helper'

RSpec.describe MetricsController, type: :controller do
  describe 'POST #create' do
    it 'creates a new metric' do
      post :create, params: { key: 'metric_1', value: 10 }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes metrics by key' do
      Metric.create(key: 'metric_1', value: 10)
      delete :destroy, params: { key: 'metric_1' }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #index' do
    it 'retrieves aggregated metrics for the most recent hour' do
      Metric.create(key: 'metric_1', value: 10, created_at: Time.now)
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
