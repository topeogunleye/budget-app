class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: %i[show]

  def index
    @categories = current_user.categories
  end

  def show
    @expenditures = @category.expenditures.order(created_at: :desc)
    @total_amount = @expenditures.sum(:amount)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "Category was successfully created."
    else
      render 'new'
    end
  end

  private
  def set_category
    @category = Category.includes(:expenditures).find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :icon).merge(author_id: current_user.id)
  end

end