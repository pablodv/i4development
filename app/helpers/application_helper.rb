module ApplicationHelper
  def admin_current_tab(resource_name)
    controller.controller_name == resource_name ? 'active' : ''
  end
end
