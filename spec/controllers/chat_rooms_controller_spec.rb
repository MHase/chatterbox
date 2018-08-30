require 'rails_helper'

describe ChatRoomsController, type: :controller do

  before do
    @user = FactoryBot.create(:user)
    sign_in @user
  end

  context 'GET #index' do
    it 'renders the chat room index page' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template(:index)
    end
  end

  context 'GET #new' do
    it 'renders the new chat room form page' do
      get :new
      expect(response).to be_ok
      expect(response).to render_template(:new)
    end
  end

  context 'GET #show' do
    it 'renders the chat room show page' do
      get :show, params: { id: '1' }
      expect(response).to be_ok
      expect(response).to render_template(:show)
    end
  end

end
