# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_board_and_card
  before_action :set_my_comment, only: [ :destroy ]

def create
  @comment = @card.comments.build(comment_params.merge(user: current_user))

  if @comment.save
    if request.headers["X-Requested-With"] == "XMLHttpRequest" && request.headers["Accept"].to_s.include?("text/html")
      render partial: "comments/comment", locals: { comment: @comment }, status: :created
    else
      redirect_to [ @board, @card ], notice: "コメントを追加しました。"
    end
  else
    if request.headers["X-Requested-With"] == "XMLHttpRequest"
      render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
    else
      redirect_to [ @board, @card ], alert: "コメントを追加できませんでした。", status: :see_other
    end
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

  # --- fetch 判定ヘルパ ---
  def ajax_request?
    request.xhr? || request.headers["X-Requested-With"] == "XMLHttpRequest"
  end

  def ajax_html_request?
    ajax_request? && request.headers["Accept"].to_s.include?("text/html")
  end
end
