module ApplicationHelper
  def admin_current_tab(resource_name)
    controller.controller_name == resource_name ? 'active' : ''
  end

  def error_message(resource, field)
    content_tag(:span, resource.errors[field][0], :class => "error") if resource.errors.include?(field)
  end

end
