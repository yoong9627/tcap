class SendEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(user_id)
    puts user_id
    @user = User.find(user_id)
    UserMailer.email(@user).deliver_now
    puts "Email successfully sent!!"
    # puts @user.email
  end
end
