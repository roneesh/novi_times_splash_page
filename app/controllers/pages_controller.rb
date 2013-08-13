class PagesController < ApplicationController
  
  def splash
  end

  def confirmation

    respond_to do |f|
      f.html { render layout: false }
    end
  end

  def confirmation_share
    
    @wait_list = Gibbon::API.lists.list["data"][0]["stats"]["member_count"]

    respond_to do |f|
      f.html { render layout: false }
    end
  end

end
