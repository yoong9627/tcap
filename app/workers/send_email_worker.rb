class SendEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(user_id, did, tid)
    @user = User.find(user_id)
    UserMailer.email(@user, did, tid).deliver_now
    puts "Email successfully sent!!"
  end
end
