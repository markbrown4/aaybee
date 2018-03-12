module DesignsHelper
  def percentage (count, total)
    return 0 if count == 0
    return "#{(count.to_f / total.to_f) * 100}%"
  end
end
