module ApplicationHelper
  def shallow_args(parent, child)
    params[:action] == 'new' ? parent : [parent, child]
  end
end
