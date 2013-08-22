class PagesController < ApplicationController
  
  def splash
  end

  def confirmation

    respond_to do |f|
      f.html { render layout: false }
    end
  end

  def confirmation_share
      
    finished("Headline")

    @wait_list = Gibbon::API.lists.list["data"][0]["stats"]["member_count"]

    respond_to do |f|
      f.html {  }
    end
  end

end
