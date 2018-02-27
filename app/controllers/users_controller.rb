class UsersController < ApplicationController
<<<<<<< HEAD
  def update
    @user = current_user
    @user.standard!
    @wikis = @user.wikis
=======
  def downgrade
    current_user.standard!
>>>>>>> user-story-6-revisions

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
