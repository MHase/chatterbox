require 'rails_helper'

describe UsersController, type: :controller do

  before do
    @user = FactoryBot.create(:user)
    sign_in @user
  end

  context 'GET #show' do

    it 'renders the current user show page' do
      get :show, params: { id: 1 }
      expect(response).to be_ok
      expect(response).to render_template(:show)
    end

  end

end
