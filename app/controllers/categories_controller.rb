class CategoriesController < ApplicationController
  before_action :logged_in_user

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @transactions = @category.transactions.order(created_at: :desc)
    @total_amount = @transactions.sum(:amount)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

  private

