module ApplicationHelper
  def current_sound?(sound)
    sound = current_sound
  end
  
  def bootstrap_class_for flash_type
    case flash_type
      when :notice then "alert-info"
      when :success then "alert-success"
      when :error then "alert-danger"
      when :alert then "alert-warning"
      else flash_type.to_s
    end
  end
  
end
