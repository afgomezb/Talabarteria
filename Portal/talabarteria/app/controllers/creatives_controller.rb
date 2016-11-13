class CreativesController < ApplicationController
  layout "creative"

  def index
  	@products = Product.all
  	@indicators = Indicator.all
  end
end
