class SemiProductsController < ApplicationController
  # GET /semi_products
  # GET /semi_products.xml
  def index
    @semi_products = SemiProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @semi_products }
    end
  end

  # GET /semi_products/1
  # GET /semi_products/1.xml
  def show
    @semi_product = SemiProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @semi_product }
    end
  end

  # GET /semi_products/new
  # GET /semi_products/new.xml
  def new
    @semi_product = SemiProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @semi_product }
    end
  end

  # GET /semi_products/1/edit
  def edit
    @semi_product = SemiProduct.find(params[:id])
  end

  # POST /semi_products
  # POST /semi_products.xml
  def create
    @semi_product = SemiProduct.new(params[:semi_product])

    respond_to do |format|
      if @semi_product.save
        flash[:notice] = 'SemiProduct was successfully created.'
        format.html { redirect_to(@semi_product) }
        format.xml  { render :xml => @semi_product, :status => :created, :location => @semi_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @semi_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /semi_products/1
  # PUT /semi_products/1.xml
  def update
    @semi_product = SemiProduct.find(params[:id])

    respond_to do |format|
      if @semi_product.update_attributes(params[:semi_product])
        flash[:notice] = 'SemiProduct was successfully updated.'
        format.html { redirect_to(@semi_product) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @semi_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /semi_products/1
  # DELETE /semi_products/1.xml
  def destroy
    @semi_product = SemiProduct.find(params[:id])
    @semi_product.destroy

    respond_to do |format|
      format.html { redirect_to(semi_products_url) }
      format.xml  { head :ok }
    end
  end
end
