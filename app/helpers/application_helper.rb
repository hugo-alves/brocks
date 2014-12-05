module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Brocks"      
    end
  end
end
