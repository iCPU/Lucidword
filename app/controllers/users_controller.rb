class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
    @praise = @user.plusminus
    @endingbookmarks = @user.following_by_type('Ending')
    @beginningbookmarks = @user.following_by_type('Beginning')
  end



end
