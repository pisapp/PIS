class WeightUnitsController < ApplicationController
  # GET /weight_units
  # GET /weight_units.xml
  def index
    @weight_units = WeightUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weight_units }
    end
  end

  # GET /weight_units/1
  # GET /weight_units/1.xml
  def show
    @weight_unit = WeightUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weight_unit }
    end
  end

  # GET /weight_units/new
  # GET /weight_units/new.xml
  def new
    @weight_unit = WeightUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weight_unit }
    end
  end

  # GET /weight_units/1/edit
  def edit
    @weight_unit = WeightUnit.find(params[:id])
  end

  # POST /weight_units
  # POST /weight_units.xml
  def create
    @weight_unit = WeightUnit.new(params[:weight_unit])

    respond_to do |format|
      if @weight_unit.save
        flash[:notice] = 'WeightUnit was successfully created.'
        format.html { redirect_to(@weight_unit) }
        format.xml  { render :xml => @weight_unit, :status => :created, :location => @weight_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weight_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weight_units/1
  # PUT /weight_units/1.xml
  def update
    @weight_unit = WeightUnit.find(params[:id])

    respond_to do |format|
      if @weight_unit.update_attributes(params[:weight_unit])
        flash[:notice] = 'WeightUnit was successfully updated.'
        format.html { redirect_to(@weight_unit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weight_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_units/1
  # DELETE /weight_units/1.xml
  def destroy
    @weight_unit = WeightUnit.find(params[:id])
    @weight_unit.destroy

    respond_to do |format|
      format.html { redirect_to(weight_units_url) }
      format.xml  { head :ok }
    end
  end
end
