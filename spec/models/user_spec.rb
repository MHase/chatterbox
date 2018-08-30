require 'rails_helper'

describe User, type: :model do

  it "should not validate users without an email address" do
    @user = FactoryBot.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end

  it "should not validate users without a password" do
    @user = FactoryBot.build(:user, password: " ")
    expect(@user).to_not be_valid
  end

  it "should accept a user's first name as a string" do
    @user = FactoryBot.build(:user, first_name: "Testy")
    expect(@user.first_name).to be_a_kind_of(String)
  end

  it "should accept a user's last name as a string" do
    @user = FactoryBot.build(:user, about: "Testerson")
    expect(@user.about).to be == @user.about
  end

  it "should accept a user's About section" do
    @user = FactoryBot.build(:user, about: "A little thing about me")
    expect(@user.about).to be_a_kind_of(String)
  end

  it "should accept a user's City as a string" do
    @user = FactoryBot.build(:user, city: "Townsborough")
    expect(@user.city).to be_a_kind_of(String)
  end

  it "should accept a user's State as a string" do
    @user = FactoryBot.build(:user, state: "Alabama")
    expect(@user.state).to be_a_kind_of(String)
  end

  it "should accept a user's Interests section as a string" do
    @user = FactoryBot.build(:user, interests: "Testing, testing, and testing")
    expect(@user.interests).to be_a_kind_of(String)
  end

  # Custom methods

  it "should accept a user's full_name when applicable" do
    @user = FactoryBot.build(:user, first_name: "Testy", last_name: "Testerson")
    expect(@user.full_name).to be == @user.first_name + " " + @user.last_name
  end

  context "users don't enter full_name" do
    it "should accept a user's name as their email address" do
      @user = FactoryBot.build(:user, first_name: "", email: "test@test.com")
      expect(@user.name).to be == @user.email.split('@')[0]
    end

    it "should accept a user's name as their first_name" do
      @user = FactoryBot.build(:user, first_name: "Testy", email: "test@test.com")
      expect(@user.name).to be == @user.first_name
    end
  end

end
