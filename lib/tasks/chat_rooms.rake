namespace :chat_rooms do
  desc "Delete chat rooms older than 1 day"
    task delete_1_day_old: :environment do
      ChatRoom.where(['created_at < ?', 24.hours.ago]).destroy_all
  end

end
