class CerpoolingrequestsController < ApplicationController
  # GET /cerpoolingrequests
  # GET /cerpoolingrequests.json
  def index
    @cerpoolingrequests = Cerpoolingrequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cerpoolingrequests }
    end
  end

  # GET /cerpoolingrequests/1
  # GET /cerpoolingrequests/1.json
  def show
    @cerpoolingrequest = Cerpoolingrequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cerpoolingrequest }
    end
  end

  # GET /cerpoolingrequests/new
  # GET /cerpoolingrequests/new.json
  def new
    @cerpoolingrequest = Cerpoolingrequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cerpoolingrequest }
    end
  end

  # GET /cerpoolingrequests/1/edit
  def edit
    @cerpoolingrequest = Cerpoolingrequest.find(params[:id])
  end

  # POST /cerpoolingrequests
  # POST /cerpoolingrequests.json
  def create
    @cerpoolingrequest = Cerpoolingrequest.new(params[:cerpoolingrequest])

    respond_to do |format|
      if @cerpoolingrequest.save
        format.html { redirect_to @cerpoolingrequest, notice: 'Cerpoolingrequest was successfully created.' }
        format.json { render json: @cerpoolingrequest, status: :created, location: @cerpoolingrequest }
      else
        format.html { render action: "new" }
        format.json { render json: @cerpoolingrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cerpoolingrequests/1
  # PUT /cerpoolingrequests/1.json
  def update
    @cerpoolingrequest = Cerpoolingrequest.find(params[:id])

    respond_to do |format|
      if @cerpoolingrequest.update_attributes(params[:cerpoolingrequest])
        format.html { redirect_to @cerpoolingrequest, notice: 'Cerpoolingrequest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cerpoolingrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cerpoolingrequests/1
  # DELETE /cerpoolingrequests/1.json
  def destroy
    @cerpoolingrequest = Cerpoolingrequest.find(params[:id])
    @cerpoolingrequest.destroy

    respond_to do |format|
      format.html { redirect_to cerpoolingrequests_url }
      format.json { head :no_content }
    end
  end
end
