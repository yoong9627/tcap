class MainController < ApplicationController
  def intro
    if current_user
      @email = current_user.email
      UserMailer.email(current_user).deliver
    end
  end

  def timecapsule
  end

  def userdiary
  end
end
