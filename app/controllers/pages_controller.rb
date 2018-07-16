class PagesController < ApplicationController

  #before_action :admin_user, except: [:unauthorised]
  def home
  end
  
  def contact
  end

  def unauthorised
  end

  def privacy_policy

  end

  def legal

  end

  def cookie_policy

  end

  def about

  end

  private

  def admin_user
    if current_user && current_user.admin == false     
      redirect_to pages_unauthorised_path
    end
  end
end
