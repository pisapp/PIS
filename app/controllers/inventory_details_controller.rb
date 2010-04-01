class InventoryDetailsController < ApplicationController
  # GET /inventory_details
  # GET /inventory_details.xml
  def index
    @inventory_details = InventoryDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventory_details }
    end
  end

  # GET /inventory_details/1
  # GET /inventory_details/1.xml
  def show
    @inventory_detail = InventoryDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inventory_detail }
    end
  end

  # GET /inventory_details/new
  # GET /inventory_details/new.xml
  def new
    @inventory_detail = InventoryDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inventory_detail }
    end
  end

  # GET /inventory_details/1/edit
  def edit
    @inventory_detail = InventoryDetail.find(params[:id])
  end

  # POST /inventory_details
  # POST /inventory_details.xml
  def create
    @inventory_detail = InventoryDetail.new(params[:inventory_detail])

    respond_to do |format|
      if @inventory_detail.save
        flash[:notice] = 'InventoryDetail was successfully created.'
        format.html { redirect_to(@inventory_detail) }
        format.xml  { render :xml => @inventory_detail, :status => :created, :location => @inventory_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inventory_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_details/1
  # PUT /inventory_details/1.xml
  def update
    @inventory_detail = InventoryDetail.find(params[:id])

    respond_to do |format|
      if @inventory_detail.update_attributes(params[:inventory_detail])
        flash[:notice] = 'InventoryDetail was successfully updated.'
        format.html { redirect_to(@inventory_detail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inventory_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_details/1
  # DELETE /inventory_details/1.xml
  def destroy
    @inventory_detail = InventoryDetail.find(params[:id])
    @inventory_detail.destroy

    respond_to do |format|
      format.html { redirect_to(inventory_details_url) }
      format.xml  { head :ok }
    end
  end
end
