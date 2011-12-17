class Admin::ArticlesController < InheritedResources::Base
  before_filter :authenticate_admin!

  layout "admin"

  def create
    create! { collection_path }
  end
end
