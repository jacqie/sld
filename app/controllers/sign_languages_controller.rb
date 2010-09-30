class SignLanguagesController < ApplicationController
  # GET /sign_languages
  # GET /sign_languages.xml
  def index
    @sign_languages = SignLanguage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sign_languages }
    end
  end

  # GET /sign_languages/1
  # GET /sign_languages/1.xml
  def show
    @sign_language = SignLanguage.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sign_language }
    end
  end

  # GET /sign_languages/new
  # GET /sign_languages/new.xml
  def new
    @sign_language = SignLanguage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sign_language }
    end
  end

  # GET /sign_languages/1/edit
  def edit
    @sign_language = SignLanguage.find(params[:id])
  end

  # POST /sign_languages
  # POST /sign_languages.xml
  def create
    @sign_language = SignLanguage.new(params[:sign_language])

    respond_to do |format|
      if @sign_language.save
        format.html { redirect_to(@sign_language, :notice => 'Sign language was successfully created.') }
        format.xml  { render :xml => @sign_language, :status => :created, :location => @sign_language }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sign_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sign_languages/1
  # PUT /sign_languages/1.xml
  def update
    @sign_language = SignLanguage.find(params[:id])

    respond_to do |format|
      if @sign_language.update_attributes(params[:sign_language])
        format.html { redirect_to(@sign_language, :notice => 'Sign language was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sign_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_languages/1
  # DELETE /sign_languages/1.xml
  def destroy
    @sign_language = SignLanguage.find(params[:id])
    @sign_language.destroy

    respond_to do |format|
      format.html { redirect_to(sign_languages_url) }
      format.xml  { head :ok }
    end
  end
end
