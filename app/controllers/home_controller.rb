class HomeController < ApplicationController
  def index
    @activities = PublicActivity::Activity.all(:order => "id desc", :limit => 50).reverse
    @users = User.all
  end
end
