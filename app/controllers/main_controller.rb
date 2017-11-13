class MainController < ApplicationController
  def intro
    if current_user
      @email = current_user.email
      UserMailer.email(current_user).deliver
      # UserMailer.delay_for(10.seconds).email(current_user)
      # UserMailer.email(current_user).deliver_later
      # @time  = current_user.created_at
      # t = @time + 10
      puts current_user.uid
      SendEmailWorker.perform_async(current_user.id)
      SendEmailWorker.perform_at(10.seconds.from_now, current_user.id)
      SendEmailWorker.perform_in(10.seconds, current_user.id)
      # render text: "TESTING Work"

      # UserMailer.delay(run_at: 10.seconds.from_now).email(current_user)
    end
  end

  def timecapsule
  end

  def userdiary
  end
end
