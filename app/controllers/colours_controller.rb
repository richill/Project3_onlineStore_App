class ColoursController < ApplicationController
  # GET /colours
  # GET /colours.json
  def index
    @colours = Colour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @colours }
    end
  end

  # GET /colours/1
  # GET /colours/1.json
  def show
    @colour = Colour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @colour }
    end
  end

  # GET /colours/new
  # GET /colours/new.json
  def new
    @colour = Colour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @colour }
    end
  end

  # GET /colours/1/edit
  def edit
    @colour = Colour.find(params[:id])
  end

  # POST /colours
  # POST /colours.json
  def create
    @colour = Colour.new(params[:colour])

    respond_to do |format|
      if @colour.save
        format.html { redirect_to @colour, notice: 'Colour was successfully created.' }
        format.json { render json: @colour, status: :created, location: @colour }
      else
        format.html { render action: "new" }
        format.json { render json: @colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /colours/1
  # PUT /colours/1.json
  def update
    @colour = Colour.find(params[:id])

    respond_to do |format|
      if @colour.update_attributes(params[:colour])
        format.html { redirect_to @colour, notice: 'Colour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colours/1
  # DELETE /colours/1.json
  def destroy
    @colour = Colour.find(params[:id])
    @colour.destroy

    respond_to do |format|
      format.html { redirect_to colours_url }
      format.json { head :no_content }
    end
  end
end
