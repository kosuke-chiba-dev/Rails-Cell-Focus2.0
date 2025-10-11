module Users
  class ProfilesController < ApplicationController
    def show
      @user = User.includes(profile: { avatar_attachment: :blob }).find(params[:user_id])
      @profile = @user.profile
    end
  end
end 