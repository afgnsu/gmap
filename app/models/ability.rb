class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user
    if user.admin?
      can :manage, :all
    elsif user.member?

      can :read, Info
      can :create, Info
      can :update, Info do |info|
        info.try(:user) == user
      end
      can :destroy, Info do |info|
        info.try(:user) == user
      end

      can :read, Shop
      can :create, Shop
      can :update, Shop do |shop|
        shop.try(:user) == user
      end
      can :destroy, Shop do |shop|
        shop.try(:user) == user
      end

    #elsif user.guest?
    else
      can :read, Info
      can :read, Shop
    end
  end
end
