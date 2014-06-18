class MyaccountController < InheritedResources::Base

  before_filter :authenticate_account!

  def edit_account_first_name
    render :partial => "first_name_select"
  end

  def index

  end

  
end
