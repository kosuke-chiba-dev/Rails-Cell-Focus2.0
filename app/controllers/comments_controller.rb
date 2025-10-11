class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_board_and_card
  before_action :set_my_comment, only: [ :destroy ]


  def new
    @comment = @card.comments.build
  end

  def create
    @comment = @card.comments.build(comment_params.merge(user: current_user))
    if @comment.save
      redirect_to [ @board, @card ], notice: "コメントを追加しました。"
    else
      flash.now[:alert]        = "コメントを追加できませんでした。"
      flash.now[:descriptions] = @comment.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy!
    redirect_to [ @board, @card ], notice: "コメントを削除しました。"
  end

  private

  def set_board_and_card
    @board = Board.find(params[:board_id])
    @card  = @board.cards.find(params[:card_id])
  end

    def set_my_comment
    @comment = @card.comments.where(user_id: current_user.id).find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
