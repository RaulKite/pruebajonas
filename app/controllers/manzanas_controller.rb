class ManzanasController < ApplicationController
  before_action :set_manzana, only: [:show, :edit, :update, :destroy]

  # GET /manzanas
  # GET /manzanas.json
  def index
    @manzanas = Manzana.all
  end

  # GET /manzanas/1
  # GET /manzanas/1.json
  def show
  end

  # GET /manzanas/new
  def new
    @manzana = Manzana.new
  end

  # GET /manzanas/1/edit
  def edit
  end

  # POST /manzanas
  # POST /manzanas.json
  def create
    @manzana = Manzana.new(manzana_params)

    respond_to do |format|
      if @manzana.save
        format.html { redirect_to @manzana, notice: 'Manzana was successfully created.' }
        format.json { render :show, status: :created, location: @manzana }
      else
        format.html { render :new }
        format.json { render json: @manzana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manzanas/1
  # PATCH/PUT /manzanas/1.json
  def update
    respond_to do |format|
      if @manzana.update(manzana_params)
        format.html { redirect_to @manzana, notice: 'Manzana was successfully updated.' }
        format.json { render :show, status: :ok, location: @manzana }
      else
        format.html { render :edit }
        format.json { render json: @manzana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manzanas/1
  # DELETE /manzanas/1.json
  def destroy
    @manzana.destroy
    respond_to do |format|
      format.html { redirect_to manzanas_url, notice: 'Manzana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manzana
      @manzana = Manzana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manzana_params
      params.require(:manzana).permit(:nombre)
    end
end
