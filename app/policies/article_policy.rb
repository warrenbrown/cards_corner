class ArticlePolicy < ApplicationPolicy
  def new?
    site_owner?
  end

  def create?
    site_owner?
  end

  def update?
    site_owner?
  end

  def delete?
    site_owner?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end

  private

  def site_owner?
    user.is_system_admin?
  end
end
