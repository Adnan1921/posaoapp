class PrijavasController < ApplicationController
  before_action :set_prijava, only: %i[ show edit update destroy ]

  # GET /prijavas or /prijavas.json
  def index
    @prijavas = Prijava.all
  end

  # GET /prijavas/1 or /prijavas/1.json
  def show
  end

  # GET /prijavas/new
  def new
    @prijava = Prijava.new
  end

  # GET /prijavas/1/edit
  def edit
  end

  # POST /prijavas or /prijavas.json
  def create
    @prijava = Prijava.new(prijava_params)

    respond_to do |format|
      if @prijava.save
        format.html { redirect_to @prijava, notice: "Prijava was successfully created." }
        format.json { render :show, status: :created, location: @prijava }
      else
        format.html { render 'posaos/_error', status: :unprocessable_entity }
        format.json { render json: @prijava.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prijavas/1 or /prijavas/1.json
  def update
    respond_to do |format|
      if @prijava.update(prijava_params)
        format.html { redirect_to @prijava, notice: "Prijava was successfully updated." }
        format.json { render :show, status: :ok, location: @prijava }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prijava.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prijavas/1 or /prijavas/1.json
  def destroy
    @prijava.destroy
    respond_to do |format|
      format.html { redirect_to prijavas_url, notice: "Prijava was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prijava
      @prijava = Prijava.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prijava_params
      params.require(:prijava).permit(:ime_prezime, :datum_rodjenja, :email, :broj_telefona, :adresa, :strucna_sprema, :posao_id, :dokument)
    end
end
