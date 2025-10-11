class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.profile
    unless @profile
      redirect_to new_profile_path, notice: "まずプロフィールを作成してください。" and return
    end
  end

  def new
    if current_user.profile
      redirect_to edit_profile_path, notice: "プロフィールは作成済みです。編集してください。" and return
    end
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to profile_path, notice: "プロフィールを作成しました。"
    else
      flash.now[:alert] = "プロフィールを作成できませんでした。"
      flash.now[:descriptions] = @profile.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @profile = current_user.profile || current_user.build_profile
  end

  def update
    @profile = current_user.profile || current_user.build_profile
    if @profile.update(profile_params)
      redirect_to profile_path, notice: "プロフィールを更新しました。"
    else
      flash.now[:alert] = "プロフィールを更新できませんでした。"
      flash.now[:descriptions] = @profile.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:nickname, :birthday, :avatar)
  end
end
