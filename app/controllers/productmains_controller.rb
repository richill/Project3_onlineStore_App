class ProductmainsController < ApplicationController
  # GET /productmains
  # GET /productmains.json
  def index
    @productmains = Productmain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productmains }
    end
  end

  # GET /productmains/1
  # GET /productmains/1.json
  def show
    @productmain = Productmain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productmain }
    end
  end

  # GET /productmains/new
  # GET /productmains/new.json
  def new
    @productmain = Productmain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productmain }
    end
  end

  # GET /productmains/1/edit
  def edit
    @productmain = Productmain.find(params[:id])
  end

  # POST /productmains
  # POST /productmains.json
  def create
    @productmain = Productmain.new(params[:productmain])

    respond_to do |format|
      if @productmain.save
        format.html { redirect_to @productmain, notice: 'Productmain was successfully created.' }
        format.json { render json: @productmain, status: :created, location: @productmain }
      else
        format.html { render action: "new" }
        format.json { render json: @productmain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productmains/1
  # PUT /productmains/1.json
  def update
    @productmain = Productmain.find(params[:id])

    respond_to do |format|
      if @productmain.update_attributes(params[:productmain])
        format.html { redirect_to @productmain, notice: 'Productmain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productmain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productmains/1
  # DELETE /productmains/1.json
  def destroy
    @productmain = Productmain.find(params[:id])
    @productmain.destroy

    respond_to do |format|
      format.html { redirect_to productmains_url }
      format.json { head :no_content }
    end
  end
end
