class Admin::ArticlesController < InheritedResources::Base
  before_filter :authenticate_admin!

  layout "admin"

  def create
    create! { collection_path }
  end

  def update
    update! { collection_path }
  end
end
