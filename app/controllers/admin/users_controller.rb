class Admin::UsersController < InheritedResources::Base
  before_filter :authenticate_admin!

  layout "admin"

  def block_event
    resource.block!
    render collection, :layout => false
  end

  def unblock_event
    resource.unblock!
    render collection, :layout => false
  end

  protected
    def collection
      @users ||= end_of_association_chain.order('created_at DESC')
    end

end
