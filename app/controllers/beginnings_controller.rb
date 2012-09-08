class BeginningsController < ApplicationController
  include ActionView::Helpers::TextHelper

  before_filter :authenticate_user!
 
  def  bookmark
    begin
      current_user.follow(@beginning = Beginning.find(params[:id]))

      respond_to do |format|
        format.html { redirect_to current_user, notice: 'You have bookmarked this beginning' }
        format.js
      end
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def unbookmark
    begin
      current_user.stop_following(@beginning = Beginning.find(params[:id]))

      respond_to do |format|
        format.html { redirect_to current_user, notice: 'You have removed your bookmark' }
         format.js
       end

    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
 end

  # GET /beginnings
  # GET /beginnings.json

  def index
    @beginnings = Beginning.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beginnings }
    end
  end

  # GET /beginnings/1
  # GET /beginnings/1.json
  def show
    @ending = Ending.new
    @beginning = Beginning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beginning }
    end
  end

  # GET /beginnings/new
  # GET /beginnings/new.json
  def new
    @beginning = Beginning.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beginning }
    end
  end

  # GET /beginnings/1/edit
  def edit
    @beginning = Beginning.find(params[:id])
  end

  # POST /beginnings
  # POST /beginnings.json
  def create
    @user = current_user
    @beginning = @user.beginnings.new(params[:beginning])

    respond_to do |format|
      if @beginning.save
        format.html { redirect_to @beginning, notice: 'Beginning was successfully created.' }
        format.json { render json: @beginning, status: :created, location: @beginning }
      else
        format.html { render action: "new" }
        format.json { render json: @beginning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beginnings/1
  # PUT /beginnings/1.json
  def update
    @beginning = Beginning.find(params[:id])

    respond_to do |format|
      if @beginning.update_attributes(params[:beginning])
        format.html { redirect_to @beginning, notice: 'Beginning was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beginning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beginnings/1
  # DELETE /beginnings/1.json
  def destroy
    @beginning = Beginning.find(params[:id])
    @beginning.destroy

    respond_to do |format|
      format.html { redirect_to beginnings_url }
      format.json { head :no_content }
    end
  end
end
