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
        flash[:notice] = 'MaterialExchange was successfully created.'
        format.html { redirect_to(@material_exchange) }
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
