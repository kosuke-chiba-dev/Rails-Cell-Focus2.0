class BoardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_my_board, only: [ :edit, :update, :destroy ] # 所有者のみ
  def index
    @boards = Board.all.order(updated_at: :desc)
  end

  def new
    @board = current_user.boards.build
  end

  def create
    @board = current_user.boards.build(board_params)
    if @board.save
      redirect_to boards_path, notice: "ボードの作成に成功しました。"
    else
      flash.now[:alert]        = "ボードの作成に失敗しました。"
      flash.now[:descriptions] = @board.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @board = Board.find(params[:id])
    @cards = @board.cards.order(updated_at: :desc)
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to boards_path, notice: "更新できました。"
    else
      flash.now[:alert] = "更新できませんでした。"
      flash.now[:descriptions] = @board.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @board.destroy!
    redirect_to boards_path, notice: "削除に成功しました。"
  end

  private

  def set_my_board
    @board = current_user.boards.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:name, :description)
  end
end
