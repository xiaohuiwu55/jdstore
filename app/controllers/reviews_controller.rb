class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user

    if @review.save
        redirect_to product_path(@product), notice: '评价成功！'
        else
        redirect_to product_path(@product), notice: '填写一些对商品对评价吧！'
        end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product), alert: "删除评价成功！"
  end

  private
  def review_params
    params.require(:review).permit(:body)
  end
end
