class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

  validates :body, presence: true, length: {minimum: 1, maximum: 1000}

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def location
    if @user.city && @user.state != nil
      "#{@user.city}" + "," + "#{@user.state}"
    else
      @user.city || @user.state
    end
  end

  # TODO make it so messages are deleted after 24 hours of posting.
  # TODO make messages specific to user's geographical location i.e. only show messages from NYC users when the user is in NYC.

end
