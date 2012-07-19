class EndingsController < ApplicationController
  # GET /endings
  # GET /endings.json
  def index
    @endings = Ending.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @endings }
    end
  end

  # GET /endings/1
  # GET /endings/1.json
  def show
    @ending = Ending.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ending }
    end
  end

  # GET /endings/new
  # GET /endings/new.json
  def new
    @ending = Ending.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ending }
    end
  end

  # GET /endings/1/edit
  def edit
    @ending = Ending.find(params[:id])
  end

  # POST /endings
  # POST /endings.json
  def create
    @user = current_user
    @ending = @user.endings.new(params[:ending])

    respond_to do |format|
      if @ending.save
        format.html { redirect_to @ending, notice: 'Ending was successfully created.' }
        format.json { render json: @ending, status: :created, location: @ending }
      else
        format.html { render action: "new" }
        format.json { render json: @ending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /endings/1
  # PUT /endings/1.json
  def update
    @ending = Ending.find(params[:id])

    respond_to do |format|
      if @ending.update_attributes(params[:ending])
        format.html { redirect_to @ending, notice: 'Ending was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endings/1
  # DELETE /endings/1.json
  def destroy
    @ending = Ending.find(params[:id])
    @ending.destroy

    respond_to do |format|
      format.html { redirect_to endings_url }
      format.json { head :no_content }
    end
  end
end