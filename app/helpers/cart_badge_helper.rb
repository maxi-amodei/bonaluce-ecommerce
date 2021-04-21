module CartBadgeHelper
  def item_count
    if session[:cart]
      return session[:cart].reduce(0) { |sum, id| sum + AddedToCartItem.find(id).quantity }
    end
  end
end