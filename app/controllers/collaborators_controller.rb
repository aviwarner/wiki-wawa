class CollaboratorsController < ApplicationController

  def create
    @collaborator = Collaborator.new(collaborator_params)
    authorize @collaborator
    @collaborator.save

    if @collaborator.save
      flash[:notice] = "Collaborator added."
    else
      flash[:alert] = "Error adding collaborator."
    end

    redirect_back(fallback_location: root_path)
  end

  def destroy
    @collaborator = Collaborator.find_by(user_id: params[:user_id], wiki_id: params[:wiki_id])
    authorize @collaborator

    if @collaborator.destroy
      flash[:notice] = "Collaborator removed."
    else
      flash[:alert] = "Collaborator removal failed."
    end

    redirect_back(fallback_location: root_path)
  end

  private

  def collaborator_params
    params.permit(:user_id, :wiki_id)
  end

end
