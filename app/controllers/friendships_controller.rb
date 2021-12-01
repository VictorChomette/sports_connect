class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:user].to_i)
    unless Friendship.find_by(user: current_user, friend: friend) || Friendship.find_by(user: friend, friend: current_user)
      Friendship.create(user: current_user, friend: friend)
    end
    redirect_to profile_path(user: friend)
  end

  def destroy
    @friend_user = User.find(params[:id])
    @friendship = Friendship.where(friend: current_user, user: @friend_user).first
    unless @friendship
      @friendship = Friendship.where(friend: @friend_user, user: current_user).first
    end
    @friendship.destroy
    redirect_to friendships_path
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.update(confirmed: true)
    redirect_to friendships_path
  end
end
