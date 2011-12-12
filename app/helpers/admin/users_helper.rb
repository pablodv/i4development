module Admin::UsersHelper
  def determine_block_path(user)
    if user.access_blocked?
      unblock_event_admin_user_path(user)
    else
      block_event_admin_user_path(user)
    end
  end
end
