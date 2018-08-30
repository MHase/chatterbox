require 'rails_helper'

describe ChatRoom, type: :model do

  it "should not be valid without title" do
    expect(ChatRoom.new(title: " ")).not_to be_valid
  end

  it "should not be valid when title over 50 characters" do
    expect(ChatRoom.new(title: "a" * 51)).not_to be_valid
  end

end
