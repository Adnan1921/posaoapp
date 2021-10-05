class KategorijesController < ApplicationController
  before_action :set_kategorije, only: %i[ show edit update destroy ]

  # GET /kategorijes or /kategorijes.json
  def index
    @kategorijes = Kategorije.all
  end

  # GET /kategorijes/1 or /kategorijes/1.json
  def show
  end

  # GET /kategorijes/new
  def new
    @kategorije = Kategorije.new
  end

  # GET /kategorijes/1/edit
  def edit
  end

  # POST /kategorijes or /kategorijes.json
  def create
    @kategorije = Kategorije.new(kategorije_params)

    respond_to do |format|
      if @kategorije.save
        format.html { redirect_to @kategorije, notice: "Kategorije was successfully created." }
        format.json { render :show, status: :created, location: @kategorije }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kategorije.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kategorijes/1 or /kategorijes/1.json
  def update
    respond_to do |format|
      if @kategorije.update(kategorije_params)
        format.html { redirect_to @kategorije, notice: "Kategorije was successfully updated." }
        format.json { render :show, status: :ok, location: @kategorije }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kategorije.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kategorijes/1 or /kategorijes/1.json
  def destroy
    @kategorije.destroy
    respond_to do |format|
      format.html { redirect_to kategorijes_url, notice: "Kategorije was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kategorije
      @kategorije = Kategorije.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kategorije_params
      params.require(:kategorije).permit(:naziv, :opis)
    end
end
