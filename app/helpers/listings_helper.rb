module ListingsHelper

  # def price_convert(price)
  #   # sprintf "%.2f", price.to_f / 100
  # end
  
  def number_to_size(size)
    case size
    when 1
      'X-Small'
    when 2 
      'Small'
    when 3
      'Medium'
    when 4
      'Large'
    when 5
      'X-Large'
    end
  end

  def number_to_sale_type(sale_type)
    case sale_type
    when 1
      'For Sale'
    when 2
      'Swap/Trade'
    when 3
      'Free'
    end
  end
end
