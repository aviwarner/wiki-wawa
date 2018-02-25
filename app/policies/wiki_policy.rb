class WikiPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def update?
    if @wiki.private
      user.present? && user == @wiki.user
    else
      user.present?
    end
  end

  def show?
    if @wiki.private
      user.present? && user == @wiki.user
    else
      user.present?
    end
  end

  def index?
    if @wiki.private
      user.present? && user == @wiki.user
    else
      user.present?
    end
  end
end
