class UsersController < ApplicationController
  def downgrade
    current_user.standard!

    @wikis.each do |w|
      if w.private
        w.private = false
        w.save!
      end
    end

    if @user.save
      flash[:notice] = "You've been downgraded!"
      redirect_to edit_user_registration_path
    else
      flash.now[:alert] = "Error saving topic, try again."
      render :edit
    end
  end
end
