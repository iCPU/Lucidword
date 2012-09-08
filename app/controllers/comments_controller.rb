class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json

  before_filter :authenticate_user!


  def index
    @comments = Comment.scoped
    @comment = Comment.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new(:parent_id => params[:parent_id], :ending_id => params[:ending_id], :user_id => current_user)
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])

  end

  # POST /comments
  # POST /comments.json
  def create
    @user = current_user
    @comment = @user.comments.build(params[:comment])
    @comment.request = request
    @comment.save
    respond_to do |format|
      format.html do
        if @comment.errors.present?
          render :new
        else
          @comment.notify_other_commenters
          redirect_to(ending_path(@comment.ending))
        end
      end
      format.js
    end

  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])
    respond_to do |format|
      format.html do
        if @comment.errors.present?
          render :edit
        else
          redirect_to(ending_path(@comment.ending))
        end
      end
      format.js
    end
  end
  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to ending_path(@comment.ending) }
      format.js
    end
  end
end
