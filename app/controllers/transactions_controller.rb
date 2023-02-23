class expendituresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category

  def index
    @expenditures = @category.expenditures.order(created_at: :desc)
  end

  def new
    @expenditure = @category.expenditures.build
  end

  def create
    @expenditure = @category.expenditures.build(expenditure_params)
    if @expenditure.save
      redirect_to category_expenditures_path(@category), notice: "expenditure was successfully created."
    else
      render :new
    end
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def expenditure_params
    params.require(:expenditure).permit(:name, :amount, category_ids: [])
  end
end
