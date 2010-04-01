class ProductExchangesController < ApplicationController
  # GET /product_exchanges
  # GET /product_exchanges.xml
  def index
    @product_exchanges = ProductExchange.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_exchanges }
    end
  end

  # GET /product_exchanges/1
  # GET /product_exchanges/1.xml
  def show
    @product_exchange = ProductExchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_exchange }
    end
  end

  # GET /product_exchanges/new
  # GET /product_exchanges/new.xml
  def new
    @product_exchange = ProductExchange.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_exchange }
    end
  end

  # GET /product_exchanges/1/edit
  def edit
    @product_exchange = ProductExchange.find(params[:id])
  end

  # POST /product_exchanges
  # POST /product_exchanges.xml
  def create
    @product_exchange = ProductExchange.new(params[:product_exchange])

    respond_to do |format|
      if @product_exchange.save
        flash[:notice] = 'ProductExchange was successfully created.'
        format.html { redirect_to(@product_exchange) }
        format.xml  { render :xml => @product_exchange, :status => :created, :location => @product_exchange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_exchanges/1
  # PUT /product_exchanges/1.xml
  def update
    @product_exchange = ProductExchange.find(params[:id])

    respond_to do |format|
      if @product_exchange.update_attributes(params[:product_exchange])
        flash[:notice] = 'ProductExchange was successfully updated.'
        format.html { redirect_to(@product_exchange) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_exchanges/1
  # DELETE /product_exchanges/1.xml
  def destroy
    @product_exchange = ProductExchange.find(params[:id])
    @product_exchange.destroy

    respond_to do |format|
      format.html { redirect_to(product_exchanges_url) }
      format.xml  { head :ok }
    end
  end
end
