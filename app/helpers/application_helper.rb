module ApplicationHelper

  def alert_for(flash_type)
    {
      :succes => 'alert-succes',
      :error => 'alert-danger',
      :alert => 'alert-warning',
      :notice => 'alert-info'
    } [flash_type.to_sym] || flash_type.to_s
  end

end
