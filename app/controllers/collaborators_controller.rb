class CollaboratorsController < ApplicationController
  def create
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = @wiki.collaborators.new([:user_id])

    if @collaborator.save
      flash[:notice] = "Collaborator added."
    else
      flash[:alert] = "Error adding collaborator."
    end

    redirect_to wiki
   end

  private

  def collaborator_params
    params.require(:wiki).permit(:user_id)
  end

end
