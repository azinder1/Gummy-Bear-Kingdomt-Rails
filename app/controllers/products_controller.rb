class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    views = @product.views + 1
    @product.update({:views => views})
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    views = 0
    @product.update({:views => views})
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
      redirect_to products_path
  end
private
  def product_params
    params.require(:product).permit(:name, :cost, :country_origin, :description, :picture)
  end
end
