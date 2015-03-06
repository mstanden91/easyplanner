class ShareController < ApplicationController
  def _navbar
    @categories = Category.all
  end
end
