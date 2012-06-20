class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    
    if user && user.admin?
      can :manage, :all
      can :access, :rails_admin
      can :dashboard
    end
  end
end
