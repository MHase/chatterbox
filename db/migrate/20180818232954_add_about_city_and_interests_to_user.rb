class AddAboutCityAndInterestsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :about, :text
    add_column :users, :city, :string
    add_column :users, :interests, :string
  end
end
