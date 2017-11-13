class TimecapsController < ApplicationController
  def new
    @timecap = Timecap.new
  end
  def create
    @timecap = Timecap.new(timecap_params)
    if @timecap.save
      SendEmailWorker.perform_at(10.seconds.from_now, current_user.id, 0, @timecap.id)
      redirect_to root_path
    else
      render ation: "new"
    end
  end
  private
    def timecap_params
      params.require(:timecap).permit(:title, :body, :wdate)
    end
end
