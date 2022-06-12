class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    true
  end

  def new?
    if user.present?
      user.admin?
    end
  end

  def update?
    if user.present?
      user.admin?
    end
  end

  def create?
    if user.present?
      user.admin?
    end
  end

  def destroy?
    if user.present?
      user.admin?
    end
  end

end
