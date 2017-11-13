class MainController < ApplicationController
  def intro
    if current_user
      @email = current_user.email
      puts current_user.uid
      # SendEmailWorker.perform_at(10.seconds.from_now, current_user.id)

    end
  end

  def timecapsule
  end

  def userdiary
  end
end
