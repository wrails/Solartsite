class PagesController < ApplicationController
  def home
    respond_to do |format|
      format.html { render :layout => 'home' }
    end
  end

  def contact
  end

  def privacy_policy
  end

  def legal
  end

  def cookie_policy
  end

  def about
  end
end
