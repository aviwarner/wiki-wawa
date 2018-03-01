class CollaboratorsController < ApplicationController

  def create
    @collaborator = Collaborator.new(collaborator_params)
    @collaborator.save

    if @collaborator.save
      flash[:notice] = "Collaborator added."
    else
      flash[:alert] = "Error adding collaborator."
    end

    redirect_back(fallback_location: root_path)
  end

  def destroy
    @collaborator = Collaborator.find_by_user_id_and_wiki_id(params[:user_id],params[:wiki_id])

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

  def collaborator_users(wiki_id)
    Collaborator.where(wiki_id: wiki_id).collect(&:user)
  end

end
