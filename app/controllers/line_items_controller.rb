class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[create]

  def create

  end
end
