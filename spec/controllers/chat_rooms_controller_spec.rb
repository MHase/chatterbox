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

end
