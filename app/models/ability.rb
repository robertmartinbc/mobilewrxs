class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    # if a member, they can manage their own posts 
    # (or create new ones)
    if user.role? :member
      can :manage, Promotion, :user_id => user.id
      can :manage, Offer, :user_id => user.id
    end

    # Moderators can delete any post
    if user.role? :moderator
      can :destroy, Promotion
      can :destroy, Offer
    end

    # Admins can do anything
    if user.role? :admin
      can :manage, :all
    end

    can :read, :all
  end
end
