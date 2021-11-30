class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:user].to_i)
    unless Friendship.find_by(user: current_user, friend: friend) || Friendship.find_by(user: friend, friend: current_user)
      Friendship.create(user: current_user, friend: friend)
    end
    redirect_to profile_path(user: friend)
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to friendships_path
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.update(confirmed: true)
    redirect_to friendships_path
  end
end
