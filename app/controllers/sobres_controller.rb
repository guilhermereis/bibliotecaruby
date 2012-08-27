class SobresController < ApplicationController
  # GET /sobres
  # GET /sobres.json
  def index
    @sobres = Sobre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sobres }
    end
  end

  # GET /sobres/1
  # GET /sobres/1.json
  def show
    @sobre = Sobre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sobre }
    end
  end

  # GET /sobres/new
  # GET /sobres/new.json
  def new
    @sobre = Sobre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sobre }
    end
  end

  # GET /sobres/1/edit
  def edit
    @sobre = Sobre.find(params[:id])
  end

  # POST /sobres
  # POST /sobres.json
  def create
    @sobre = Sobre.new(params[:sobre])

    respond_to do |format|
      if @sobre.save
        format.html { redirect_to @sobre, notice: 'Sobre was successfully created.' }
        format.json { render json: @sobre, status: :created, location: @sobre }
      else
        format.html { render action: "new" }
        format.json { render json: @sobre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sobres/1
  # PUT /sobres/1.json
  def update
    @sobre = Sobre.find(params[:id])

    respond_to do |format|
      if @sobre.update_attributes(params[:sobre])
        format.html { redirect_to @sobre, notice: 'Sobre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sobre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sobres/1
  # DELETE /sobres/1.json
  def destroy
    @sobre = Sobre.find(params[:id])
    @sobre.destroy

    respond_to do |format|
      format.html { redirect_to sobres_url }
      format.json { head :no_content }
    end
  end
end
