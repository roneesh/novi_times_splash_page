class PagesController < ApplicationController
  
  def splash
  end

  def confirmation

    respond_to do |f|
      f.html { render layout: false }
    end
  end

  def confirmation_share
    
    respond_to do |f|
      f.html { render layout: false }
    end
  end

end
