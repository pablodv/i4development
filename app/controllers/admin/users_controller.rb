class Admin::UsersController < InheritedResources::Base
  before_filter :authenticate_admin!

  layout "admin"
end
