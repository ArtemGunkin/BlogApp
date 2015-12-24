class UsersController < ApplicationController
  def profile
    @posts = Post.where(id: current_user.id)
  end
end
