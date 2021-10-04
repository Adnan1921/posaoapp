class PosaosController < ApplicationController
  before_action :set_posao, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  # GET /posaos or /posaos.json
  def index
    @posaos = Posao.all
    
    
    
  end

  # GET /posaos/1 or /posaos/1.json
  def show
    @prijava = Prijava.new
    @prijave = Prijava.where(posao: @posao.id)
  end

  # GET /posaos/new
  def new
    @posao = Posao.new
  end

  # GET /posaos/1/edit
  def edit
  end

  # POST /posaos or /posaos.json
  def create
    @posao = Posao.new(posao_params)

    respond_to do |format|
      if @posao.save
        PosloviMailer.with(posao: @posao).uspjesna_email.deliver_now
        format.html { redirect_to @posao, notice: "Posao was successfully created." }
        format.json { render :show, status: :created, location: @posao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @posao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posaos/1 or /posaos/1.json
  def update
    respond_to do |format|
      if @posao.update(posao_params)
        
        
        format.html { redirect_to @posao, notice: "Posao was successfully updated." }
        format.json { render :show, status: :ok, location: @posao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @posao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posaos/1 or /posaos/1.json
  def destroy
    @prijave = Prijava.where(posao: @posao.id)
          @prijave[0].destroy
          @posao.destroy
              respond_to do |format|
      format.html { redirect_to posaos_url, notice: "Posao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posao
      @posao = Posao.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def posao_params
      params.require(:posao).permit(:naziv_oglasa, :opis_oglasa, :naziv_poslodava, :email_poslodavca, :rok)
    end
end
