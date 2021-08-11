# frozen_string_literal: true

# this model file comes with the cancancan gem and is used for authorisation. With this gem, I've created admin functionality and assigned the admin with controll ability over the website
class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    return unless user.present?  # additional permissions for logged in users (they can read their own posts)
    can :manage, Program, coach: user
    can :destroy, Review, user: user

    return unless user.admin?  # additional permissions for administrators
    can :manage, :all  

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
