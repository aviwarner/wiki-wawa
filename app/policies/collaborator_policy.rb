class CollaboratorPolicy < ApplicationPolicy
  attr_reader :user, :collaborator

  def initialize(user, collaborator)
    @user = user
    @collaborator = collaborator
  end

  def create?
    (user.admin? || user.premium?) && user.id == owner(collaborator.wiki_id)
  end

  def destroy?
    create?
  end

  private

  def owner(wiki_id)
    Wiki.find(wiki_id).user_id
  end
end
