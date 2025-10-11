class CardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_board
  before_action :set_card, only: [ :show ]
  before_action :set_my_card, only: [ :edit, :update, :destroy ]


  def new
    @card = @board.cards.build
  end

  def create
    @card = @board.cards.build(card_params)
    @card.user = current_user
    if @card.save
      redirect_to @board, notice: "カードを追加しました。"
    else
      flash.now[:alert] = "カードを作成できませんでした。"
      flash.now[:descriptions] = @card.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @comments = @card.comments.order(created_at: :desc)
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to [ @board, @card ], notice: "更新できました。"
    else
      flash.now[:alert] = "更新できませんでした。"
      flash.now[:descriptions] = @card.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @card.destroy!
    redirect_to @board, notice: "削除できました。"
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_card
    @card = @board.cards.find(params[:id])
  end

    def set_my_card
      @card = @board.cards.where(user_id: current_user.id).find(params[:id])
    end

  def card_params
    params.require(:card).permit(:title, :description, :thumbnail, :position)
  end
end
