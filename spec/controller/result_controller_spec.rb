# frozen_string_literal: true

require 'rails_helper'
RSpec.describe ResultController, type: :controller do
  context 'new' do
    it 'renders new view' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  context 'create' do
    it 'renders show view' do
      get :create
      expect(response).to render_template(:show)
    end
  end
end