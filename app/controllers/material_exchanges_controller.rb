class MaterialExchangesController < ApplicationController
  layout "master"
  before_filter :authorize
  
  # GET /material_exchanges
  # GET /material_exchanges.xml
  def index
    @material_exchanges = MaterialExchange.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @material_exchanges }
    end
  end

  # GET /material_exchanges/1
  # GET /material_exchanges/1.xml
  def show
    @material_exchange = MaterialExchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @material_exchange }
    end
  end

  # GET /material_exchanges/new
  # GET /material_exchanges/new.xml
  def new
    @material_exchange = MaterialExchange.new
    @exchange_details = MaterialExchange.find(:all, :order => "created_at DESC")

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @material_exchange }
    end
  end

  # GET /material_exchanges/1/edit
  def edit
    @material_exchange = MaterialExchange.find(params[:id])
  end

  # POST /material_exchanges
  # POST /material_exchanges.xml
  def create
    @material_exchange = MaterialExchange.new(params[:material_exchange])

    respond_to do |format|
      if @material_exchange.save
        # Input to inventory
        inventory = InventoryDetail.find(:first, :conditions => ["storage_id = ? and inventory_id = ?", 
                                                                  @material_exchange.material_id,
                                                                  @material_exchange.inventory_id])
        inventory = InventoryDetail.new if inventory.nil?
        inventory.inventory_id = @material_exchange.inventory_id
        inventory.storage_type = 0
        inventory.storage_id = @material_exchange.material_id
        inventory.size = 0 if inventory.size.nil?
        inventory.size = @material_exchange.exchange_type == 0 ? 
                         inventory.size + @material_exchange.size :
                         inventory.size - @material_exchange.size 
        inventory.save                         
        # Redirect                         
        flash[:notice] = 'MaterialExchange was successfully created.'
        format.html { redirect_to new_material_exchange_path }
        format.xml  { render :xml => @material_exchange, :status => :created, :location => @material_exchange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @material_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /material_exchanges/1
  # PUT /material_exchanges/1.xml
  def update
    @material_exchange = MaterialExchange.find(params[:id])

    respond_to do |format|
      if @material_exchange.update_attributes(params[:material_exchange])
        flash[:notice] = 'MaterialExchange was successfully updated.'
        format.html { redirect_to(@material_exchange) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @material_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /material_exchanges/1
  # DELETE /material_exchanges/1.xml
  def destroy
    @material_exchange = MaterialExchange.find(params[:id])
    @material_exchange.destroy

    respond_to do |format|
      format.html { redirect_to(material_exchanges_url) }
      format.xml  { head :ok }
    end
  end
end
