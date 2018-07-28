require 'test_helper'

class ChatRoomTest < ActiveSupport::TestCase

  def setup
    @chat_room = ChatRoom.new(title: "TitleString")
  end

  test 'should be a valid title' do
      assert @chat_room.title.valid?
  end

end
