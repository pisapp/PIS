class ActivityTrackingsController < ApplicationController
  layout "master"
  before_filter :authorize
  
  # GET /activity_trackings
  # GET /activity_trackings.xml
  def index
    @activity_trackings = ActivityTracking.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @activity_trackings }
    end
  end

  # GET /activity_trackings/1
  # GET /activity_trackings/1.xml
  def show
    @activity_tracking = ActivityTracking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @activity_tracking }
    end
  end

  # GET /activity_trackings/new
  # GET /activity_trackings/new.xml
  def new
    @activity_tracking = ActivityTracking.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @activity_tracking }
    end
  end

  # GET /activity_trackings/1/edit
  def edit
    @activity_tracking = ActivityTracking.find(params[:id])
  end

  # POST /activity_trackings
  # POST /activity_trackings.xml
  def create
    @activity_tracking = ActivityTracking.new(params[:activity_tracking])

    respond_to do |format|
      if @activity_tracking.save
        flash[:notice] = 'ActivityTracking was successfully created.'
        format.html { redirect_to(@activity_tracking) }
        format.xml  { render :xml => @activity_tracking, :status => :created, :location => @activity_tracking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @activity_tracking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /activity_trackings/1
  # PUT /activity_trackings/1.xml
  def update
    @activity_tracking = ActivityTracking.find(params[:id])

    respond_to do |format|
      if @activity_tracking.update_attributes(params[:activity_tracking])
        flash[:notice] = 'ActivityTracking was successfully updated.'
        format.html { redirect_to(@activity_tracking) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @activity_tracking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_trackings/1
  # DELETE /activity_trackings/1.xml
  def destroy
    @activity_tracking = ActivityTracking.find(params[:id])
    @activity_tracking.destroy

    respond_to do |format|
      format.html { redirect_to(activity_trackings_url) }
      format.xml  { head :ok }
    end
  end
end
