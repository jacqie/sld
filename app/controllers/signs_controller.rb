class SignsController < ApplicationController
  # GET /signs
  # GET /signs.xml
  def index
    @signs = Sign.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @signs }
    end
  end

  # GET /signs/1
  # GET /signs/1.xml
  def show
    @sign = Sign.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sign }
    end
  end

  # GET /signs/new
  # GET /signs/new.xml
  def new
    @sign = Sign.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sign }
    end
  end

  # GET /signs/1/edit
  def edit
    @sign = Sign.find(params[:id])
  end

  # POST /signs
  # POST /signs.xml
  def create
    @sign = Sign.new(params[:sign])

    respond_to do |format|
      if @sign.save
        format.html { redirect_to(@sign, :notice => 'Sign was successfully created.') }
        format.xml  { render :xml => @sign, :status => :created, :location => @sign }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /signs/1
  # PUT /signs/1.xml
  def update
    @sign = Sign.find(params[:id])

    respond_to do |format|
      if @sign.update_attributes(params[:sign])
        format.html { redirect_to(@sign, :notice => 'Sign was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /signs/1
  # DELETE /signs/1.xml
  def destroy
    @sign = Sign.find(params[:id])
    @sign.destroy

    respond_to do |format|
      format.html { redirect_to(signs_url) }
      format.xml  { head :ok }
    end
  end
end
