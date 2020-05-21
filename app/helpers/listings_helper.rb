module ListingsHelper
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

  def created_at_to_date(created_at)
    @date = created_at.strftime("%d/%m/%Y")
    return @date
  end
end
