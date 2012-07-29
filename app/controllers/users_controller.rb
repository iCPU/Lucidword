class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def  follow
    begin
      current_user.follow(@user = User.find(params[:id]))

      respond_to do |format|
        format.html { redirect_to @user, notice: 'You are now following this author' }
        format.js
      end
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def unfollow
    begin
      current_user.stop_following(@user = User.find(params[:id]))

      respond_to do |format|
        format.html { redirect_to current_user, notice: 'You have stopped follwing this author' }
         format.js
       end

    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
    @praise = @user.plusminus
    @endingbookmarks = @user.following_by_type('Ending')
    @beginningbookmarks = @user.following_by_type('Beginning')
    @userfollowed = @user.following_by_type('User')

  end



end
