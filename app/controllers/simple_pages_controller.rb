class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
  	@featured_product = Product.first
  	#@products = Product.limit(3)
  	@products = Product.offset(rand(Product.count)).limit(4)
  end
end
