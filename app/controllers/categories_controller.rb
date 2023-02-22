class categoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end

# Path: app/models/category.rb
class Category < ActiveRecord::Base
  has_many :products
end