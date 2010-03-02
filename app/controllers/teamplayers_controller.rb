class TeamplayersController < ApplicationController
  # GET /teamplayers
  # GET /teamplayers.xml
  def index
    @teamplayers = Teamplayer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teamplayers }
    end
  end

  # GET /teamplayers/1
  # GET /teamplayers/1.xml
  def show
    @teamplayer = Teamplayer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @teamplayer }
    end
  end

  # GET /teamplayers/new
  # GET /teamplayers/new.xml
  def new
    @teamplayer = Teamplayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @teamplayer }
    end
  end

  # GET /teamplayers/1/edit
  def edit
    @teamplayer = Teamplayer.find(params[:id])
  end

  # POST /teamplayers
  # POST /teamplayers.xml
  def create
    @teamplayer = Teamplayer.new(params[:teamplayer])

    respond_to do |format|
      if @teamplayer.save
        flash[:notice] = 'Teamplayer was successfully created.'
        format.html { redirect_to(@teamplayer) }
        format.xml  { render :xml => @teamplayer, :status => :created, :location => @teamplayer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @teamplayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /teamplayers/1
  # PUT /teamplayers/1.xml
  def update
    @teamplayer = Teamplayer.find(params[:id])

    respond_to do |format|
      if @teamplayer.update_attributes(params[:teamplayer])
        flash[:notice] = 'Teamplayer was successfully updated.'
        format.html { redirect_to(@teamplayer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @teamplayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /teamplayers/1
  # DELETE /teamplayers/1.xml
  def destroy
    @teamplayer = Teamplayer.find(params[:id])
    @teamplayer.destroy

    respond_to do |format|
      format.html { redirect_to(teamplayers_url) }
      format.xml  { head :ok }
    end
  end
end
