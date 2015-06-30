Spree::LineItem.class_eval do
  def tax_cloud_cache_key
    key = "Spree::LineItem #{id}: #{quantity}x<#{variant.cache_key}>@#{price}#{currency}"
    if order.tax_address
      key << "tax_address<#{order.tax_address.try(:cache_key)}>"
    end
  end
end
