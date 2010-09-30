class MeaningsController < ApplicationController
  # GET /meanings
  # GET /meanings.xml
  def index
    @meanings = Meaning.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meanings }
    end
  end

  # GET /meanings/1
  # GET /meanings/1.xml
  def show
    @meaning = Meaning.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meaning }
    end
  end

  # GET /meanings/new
  # GET /meanings/new.xml
  def new
    @meaning = Meaning.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meaning }
    end
  end

  # GET /meanings/1/edit
  def edit
    @meaning = Meaning.get(params[:id])
  end

  # POST /meanings
  # POST /meanings.xml
  def create
    @meaning = Meaning.new(params[:meaning])

    respond_to do |format|
      if @meaning.save
        format.html { redirect_to(@meaning, :notice => 'Meaning was successfully created.') }
        format.xml  { render :xml => @meaning, :status => :created, :location => @meaning }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meaning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meanings/1
  # PUT /meanings/1.xml
  def update
    @meaning = Meaning.get(params[:id])

    respond_to do |format|
      if @meaning.update_attributes(params[:meaning])
        format.html { redirect_to(@meaning, :notice => 'Meaning was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meaning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meanings/1
  # DELETE /meanings/1.xml
  def destroy
    @meaning = Meaning.get(params[:id])
    @meaning.destroy

    respond_to do |format|
      format.html { redirect_to(meanings_url) }
      format.xml  { head :ok }
    end
  end
end
