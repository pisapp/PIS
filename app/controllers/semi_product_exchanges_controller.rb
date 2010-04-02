class SemiProductExchangesController < ApplicationController
  layout "master"
  before_filter :authorize
  
  # GET /semi_product_exchanges
  # GET /semi_product_exchanges.xml
  def index
    @semi_product_exchanges = SemiProductExchange.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @semi_product_exchanges }
    end
  end

  # GET /semi_product_exchanges/1
  # GET /semi_product_exchanges/1.xml
  def show
    @semi_product_exchange = SemiProductExchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @semi_product_exchange }
    end
  end

  # GET /semi_product_exchanges/new
  # GET /semi_product_exchanges/new.xml
  def new
    @semi_product_exchange = SemiProductExchange.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @semi_product_exchange }
    end
  end

  # GET /semi_product_exchanges/1/edit
  def edit
    @semi_product_exchange = SemiProductExchange.find(params[:id])
  end

  # POST /semi_product_exchanges
  # POST /semi_product_exchanges.xml
  def create
    @semi_product_exchange = SemiProductExchange.new(params[:semi_product_exchange])

    respond_to do |format|
      if @semi_product_exchange.save
        flash[:notice] = 'SemiProductExchange was successfully created.'
        format.html { redirect_to(@semi_product_exchange) }
        format.xml  { render :xml => @semi_product_exchange, :status => :created, :location => @semi_product_exchange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @semi_product_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /semi_product_exchanges/1
  # PUT /semi_product_exchanges/1.xml
  def update
    @semi_product_exchange = SemiProductExchange.find(params[:id])

    respond_to do |format|
      if @semi_product_exchange.update_attributes(params[:semi_product_exchange])
        flash[:notice] = 'SemiProductExchange was successfully updated.'
        format.html { redirect_to(@semi_product_exchange) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @semi_product_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /semi_product_exchanges/1
  # DELETE /semi_product_exchanges/1.xml
  def destroy
    @semi_product_exchange = SemiProductExchange.find(params[:id])
    @semi_product_exchange.destroy

    respond_to do |format|
      format.html { redirect_to(semi_product_exchanges_url) }
      format.xml  { head :ok }
    end
  end
end
