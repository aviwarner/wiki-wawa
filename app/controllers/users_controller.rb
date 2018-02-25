class UsersController < ApplicationController
  def update
    current_user.standard!

    if current_user.save
      flash[:notice] = "You've been downgraded!"
      render :edit
    else
      flash.now[:alert] = "Error saving topic, try again."
      render :edit
    end
  end
end
