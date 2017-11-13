class UserdiariesController < ApplicationController
  def index
     @userdiary =  Userdiary.order("created_at DESC")
   end

   def show
     @userdiary = Userdiary.find(params[:id])
   end

   def new
     @userdiary = Userdiary.new
   end

   def create
     @userdiary = Userdiary.new(userdiary_params)
     if @userdiary.save
       SendEmailWorker.perform_at(10.seconds.from_now, current_user.id, @userdiary.id, 0)
       redirect_to root_path, notice: "The article has been successfully created."
     else
       render action: "new"
     end
   end

   def edit
     @useridary = Userdiary.find(params[:id])
   end

   def update
     @userdiary= Userdiary.find(params[:id])
     if @userdiary.update_attributes(userdiary_params)
       redirect_to root_path, notice: "The article has been successfully updated."
     else
       render action: "edit"
     end
   end

 private

   def userdiary_params
     params.require(:userdiary).permit(:title, :body)
   end
end
