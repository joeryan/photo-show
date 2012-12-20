class SlidshowsController < ApplicationController
  # GET /slidshows
  # GET /slidshows.json
  def index
    @slidshows = Slidshow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slidshows }
    end
  end

  # GET /slidshows/1
  # GET /slidshows/1.json
  def show
    @slidshow = Slidshow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slidshow }
    end
  end

  # GET /slidshows/new
  # GET /slidshows/new.json
  def new
    @slidshow = Slidshow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @slidshow }
    end
  end

  # GET /slidshows/1/edit
  def edit
    @slidshow = Slidshow.find(params[:id])
  end

  # POST /slidshows
  # POST /slidshows.json
  def create
    @slidshow = Slidshow.new(params[:slidshow])

    respond_to do |format|
      if @slidshow.save
        format.html { redirect_to @slidshow, notice: 'Slidshow was successfully created.' }
        format.json { render json: @slidshow, status: :created, location: @slidshow }
      else
        format.html { render action: "new" }
        format.json { render json: @slidshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /slidshows/1
  # PUT /slidshows/1.json
  def update
    @slidshow = Slidshow.find(params[:id])

    respond_to do |format|
      if @slidshow.update_attributes(params[:slidshow])
        format.html { redirect_to @slidshow, notice: 'Slidshow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @slidshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slidshows/1
  # DELETE /slidshows/1.json
  def destroy
    @slidshow = Slidshow.find(params[:id])
    @slidshow.destroy

    respond_to do |format|
      format.html { redirect_to slidshows_url }
      format.json { head :no_content }
    end
  end
end
