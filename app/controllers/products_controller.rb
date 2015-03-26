class ProductsController < ApplicationController

	def index
		@products = Product.includes(:user).all
	end

	respond_to do |format|
      format.html # show default view
      format.json {render :json => @products}
    end

end
