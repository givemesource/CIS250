class WishersController < ApplicationController
  # GET /wishers
  # GET /wishers.xml
  def index
    @wishers = Wisher.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wishers }
    end
  end

  # GET /wishers/1
  # GET /wishers/1.xml
  def show
    @wisher = Wisher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wisher }
    end
  end

  # GET /wishers/new
  # GET /wishers/new.xml
  def new
    @wisher = Wisher.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wisher }
    end
  end

  # GET /wishers/1/edit
  def edit
    @wisher = Wisher.find(params[:id])
  end

  # POST /wishers
  # POST /wishers.xml
  def create
    @wisher = Wisher.new(params[:wisher])

    respond_to do |format|
      if @wisher.save
        format.html { redirect_to(@wisher, :notice => 'Wisher was successfully created.') }
        format.xml  { render :xml => @wisher, :status => :created, :location => @wisher }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wisher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wishers/1
  # PUT /wishers/1.xml
  def update
    @wisher = Wisher.find(params[:id])

    respond_to do |format|
      if @wisher.update_attributes(params[:wisher])
        format.html { redirect_to(@wisher, :notice => 'Wisher was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wisher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wishers/1
  # DELETE /wishers/1.xml
  def destroy
    @wisher = Wisher.find(params[:id])
    @wisher.destroy

    respond_to do |format|
      format.html { redirect_to(wishers_url) }
      format.xml  { head :ok }
    end
  end
end
