class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

  validates :body, presence: true, length: {minimum: 1, maximum: 1000}

  after_create_commit { MessageBroadcastJob.perform_later(self) }


  # TODO make it so messages are deleted after 24 hours of posting.
  # TODO make messages specific to user's geographical location i.e. only show messages from NYC users when the user is in NYC.

end
