class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(user)
    UserMailer.email(user).deliver
  end
end
