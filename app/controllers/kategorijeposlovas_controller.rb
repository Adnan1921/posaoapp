class KategorijeposlovasController < ApplicationController
  before_action :set_kategorijeposlova, only: %i[ show edit update destroy ]

  # GET /kategorijeposlovas or /kategorijeposlovas.json
  def index
    @kategorijeposlovas = Kategorijeposlova.all
  end

  # GET /kategorijeposlovas/1 or /kategorijeposlovas/1.json
  def show
  end

  # GET /kategorijeposlovas/new
  def new
    @kategorijeposlova = Kategorijeposlova.new
  end

  # GET /kategorijeposlovas/1/edit
  def edit
  end

  # POST /kategorijeposlovas or /kategorijeposlovas.json
  def create
    @kategorijeposlova = Kategorijeposlova.new(kategorijeposlova_params)

    respond_to do |format|
      if @kategorijeposlova.save
        format.html { redirect_to @kategorijeposlova, notice: "Kategorijeposlova was successfully created." }
        format.json { render :show, status: :created, location: @kategorijeposlova }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kategorijeposlova.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kategorijeposlovas/1 or /kategorijeposlovas/1.json
  def update
    respond_to do |format|
      if @kategorijeposlova.update(kategorijeposlova_params)
        format.html { redirect_to @kategorijeposlova, notice: "Kategorijeposlova was successfully updated." }
        format.json { render :show, status: :ok, location: @kategorijeposlova }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kategorijeposlova.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kategorijeposlovas/1 or /kategorijeposlovas/1.json
  def destroy
    @kategorijeposlova.destroy
    respond_to do |format|
      format.html { redirect_to kategorijeposlovas_url, notice: "Kategorijeposlova was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kategorijeposlova
      @kategorijeposlova = Kategorijeposlova.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kategorijeposlova_params
      params.require(:kategorijeposlova).permit(:naziv, :opis)
    end
end
