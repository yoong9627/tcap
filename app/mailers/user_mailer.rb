class UserMailer < ApplicationMailer
  default from: "yongy0221@gmail.com"

  def email(user, did, tid)
    @user = user

    @did = did
    @tid = tid

    if @did != 0
      @diary = Userdiary.find(did)
      @d_title = @diary.title
      @d_body = @diary.body
    elsif @tid != 0
      @tcp = Timecap.find(tid)
      @t_title = @tcp.title
      @t_body = @tcp.body
    end  

    mail to: user.email, subject: "Test Email!"
  end
end
