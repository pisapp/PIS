class QuantityUnitsController < ApplicationController
  layout "master"
  before_filter :authorize
  
  # GET /quantity_units
  # GET /quantity_units.xml
  def index
    @quantity_units = QuantityUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quantity_units }
    end
  end

  # GET /quantity_units/1
  # GET /quantity_units/1.xml
  def show
    @quantity_unit = QuantityUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quantity_unit }
    end
  end

  # GET /quantity_units/new
  # GET /quantity_units/new.xml
  def new
    @quantity_unit = QuantityUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quantity_unit }
    end
  end

  # GET /quantity_units/1/edit
  def edit
    @quantity_unit = QuantityUnit.find(params[:id])
  end

  # POST /quantity_units
  # POST /quantity_units.xml
  def create
    @quantity_unit = QuantityUnit.new(params[:quantity_unit])

    respond_to do |format|
      if @quantity_unit.save
        flash[:notice] = 'QuantityUnit was successfully created.'
        format.html { redirect_to(@quantity_unit) }
        format.xml  { render :xml => @quantity_unit, :status => :created, :location => @quantity_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quantity_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quantity_units/1
  # PUT /quantity_units/1.xml
  def update
    @quantity_unit = QuantityUnit.find(params[:id])

    respond_to do |format|
      if @quantity_unit.update_attributes(params[:quantity_unit])
        flash[:notice] = 'QuantityUnit was successfully updated.'
        format.html { redirect_to(@quantity_unit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quantity_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quantity_units/1
  # DELETE /quantity_units/1.xml
  def destroy
    @quantity_unit = QuantityUnit.find(params[:id])
    @quantity_unit.destroy

    respond_to do |format|
      format.html { redirect_to(quantity_units_url) }
      format.xml  { head :ok }
    end
  end
end
