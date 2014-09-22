class KarsController < ApplicationController
  before_action :set_kar, only: [:show, :edit, :update, :destroy]

  # GET /kars
  # GET /kars.json
  def index
    @kars = Kar.limit(6)
  end
    def all
        @kars = Kar.all
        end

  # GET /kars/1
  # GET /kars/1.json
  def show
  end

  # GET /kars/new
  def new
    @kar = Kar.new
      @locations = Location.all
      respond_to do |format|
          format.html # new.html.erb
          format.xml {render :xml => @kar }
          end
  end

  # GET /kars/1/edit
  def edit
      @kar = Kar.find(params[:id])
      @locations = Location.all
  end

  # POST /kars
  # POST /kars.json
  def create
    @kar = Kar.new(kar_params)
      @locations = Location.all

    respond_to do |format|
      if @kar.save
        format.html { redirect_to @kar, notice: 'kar was successfully created.' }
        format.json { render :show, status: :created, location: @kar }
      else
        format.html { render :new }
        format.json { render json: @kar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kars/1
  # PATCH/PUT /kars/1.json
  def update
    respond_to do |format|
      if @kar.update(kar_params)
        format.html { redirect_to @kar, notice: 'kar was successfully updated.' }
        format.json { render :show, status: :ok, location: @kar }
      else
        format.html { render :edit }
        format.json { render json: @kar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kars/1
  # DELETE /kars/1.json
  def destroy
    @kar.destroy
    respond_to do |format|
      format.html { redirect_to kars_url, notice: 'kar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kar
      @kar = Kar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kar_params
      params.require(:kar).permit(:image_url, :title, :description, :price, :directions, :location_id, :published)
    end
end
