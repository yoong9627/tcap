class MainController < ApplicationController
  def intro
    if current_user
      @email = current_user.email

    end
  end

  def timecapsule
  end

  def userdiary
  end
end
