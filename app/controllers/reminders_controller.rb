class RemindersController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @reminder = @user.reminders.build(params[:reminder])
    @reminder.save

    redirect_to @user
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    redirect_to @reminder.user
  end
end


