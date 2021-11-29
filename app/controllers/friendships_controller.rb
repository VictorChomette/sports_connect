class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:user].to_i)
    unless Friendship.find_by(user: current_user, friend: friend) || Friendship.find_by(user: friend, friend: current_user)
      Friendship.create(user: current_user, friend: friend)
    end
    redirect_to profile_path(user: friend)
  end
end
