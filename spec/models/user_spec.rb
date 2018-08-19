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

  it "should accept a user's About section" do
    @user = FactoryBot.build(:user, about: "A little thing about me")
    expect(@user.about).to be == @user.about
  end

  it "should accept a user's City" do
    @user = FactoryBot.build(:user, city: "Townsborough")
    expect(@user.city).to be_a_kind_of(String)
  end

  it "should accept a user's State" do
    @user = FactoryBot.build(:user, state: "Alabama")
    expect(@user.state).to be_a_kind_of(String)
  end

  it "should accept a user's Interests section" do
    @user = FactoryBot.build(:user, interests: "Testing, testing, and testing")
    expect(@user.interests).to be_a_kind_of(String)
  end

end
