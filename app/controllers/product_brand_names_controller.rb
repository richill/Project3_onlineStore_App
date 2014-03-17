class ProductBrandNamesController < ApplicationController
  # GET /product_brand_names
  # GET /product_brand_names.json
  def index
    @product_brand_names = ProductBrandName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_brand_names }
    end
  end

  # GET /product_brand_names/1
  # GET /product_brand_names/1.json
  def show
    @product_brand_name = ProductBrandName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_brand_name }
    end
  end

  # GET /product_brand_names/new
  # GET /product_brand_names/new.json
  def new
    @product_brand_name = ProductBrandName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_brand_name }
    end
  end

  # GET /product_brand_names/1/edit
  def edit
    @product_brand_name = ProductBrandName.find(params[:id])
  end

  # POST /product_brand_names
  # POST /product_brand_names.json
  def create
    @product_brand_name = ProductBrandName.new(params[:product_brand_name])

    respond_to do |format|
      if @product_brand_name.save
        format.html { redirect_to @product_brand_name, notice: 'Product brand name was successfully created.' }
        format.json { render json: @product_brand_name, status: :created, location: @product_brand_name }
      else
        format.html { render action: "new" }
        format.json { render json: @product_brand_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_brand_names/1
  # PUT /product_brand_names/1.json
  def update
    @product_brand_name = ProductBrandName.find(params[:id])

    respond_to do |format|
      if @product_brand_name.update_attributes(params[:product_brand_name])
        format.html { redirect_to @product_brand_name, notice: 'Product brand name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_brand_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_brand_names/1
  # DELETE /product_brand_names/1.json
  def destroy
    @product_brand_name = ProductBrandName.find(params[:id])
    @product_brand_name.destroy

    respond_to do |format|
      format.html { redirect_to product_brand_names_url }
      format.json { head :no_content }
    end
  end
end
