require "facebook/messenger"

include Facebook::Messenger 

Facebook::Messenger::Subscriptions.subscribe

# message.id            
# message.sender
# message.seq
# message.sent_at
# message.text
# message.attachments 

Bot.on :message do |message|

  brain = Brain.new
  brain.set_message(message)
  brain.start_typing
  brain.create_log
  brain.process_message
  brain.stop_typing

  # client = Facebook::Client.new 
  # user_data = client.get_user(message.sender["id"])
  # user_name = user_data["first_name"]

  # Bot.deliver(
  #   recipient: message.sender, 
  #   message: {
  #     text: "Hi #{user_name}!"
  #   }
  # )
end

Bot.on :postback do |postback|
  brain = Brain.new
  brain.set_postback(message)
  brain.start_typing
  brain.create_log
  brain.process_postback
  brain.stop_typing
end