class SlambinitaController < ApplicationController
  before_action :set_slambinitum, only: [:show, :edit, :update, :destroy]

  # GET /slambinita
  # GET /slambinita.json
  def index
    @slambinita = Slambinitum.all
  end

  # GET /slambinita/1
  # GET /slambinita/1.json
  def show
  end

  # GET /slambinita/new
  def new
    @slambinitum = Slambinitum.new
  end

  # GET /slambinita/1/edit
  def edit
  end

  # POST /slambinita
  # POST /slambinita.json
  def create
    @slambinitum = Slambinitum.new(slambinitum_params)

    respond_to do |format|
      if @slambinitum.save
        format.html { redirect_to @slambinitum, notice: 'Slambinitum was successfully created.' }
        format.json { render :show, status: :created, location: @slambinitum }
      else
        format.html { render :new }
        format.json { render json: @slambinitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slambinita/1
  # PATCH/PUT /slambinita/1.json
  def update
    respond_to do |format|
      if @slambinitum.update(slambinitum_params)
        format.html { redirect_to @slambinitum, notice: 'Slambinitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @slambinitum }
      else
        format.html { render :edit }
        format.json { render json: @slambinitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slambinita/1
  # DELETE /slambinita/1.json
  def destroy
    @slambinitum.destroy
    respond_to do |format|
      format.html { redirect_to slambinita_url, notice: 'Slambinitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slambinitum
      @slambinitum = Slambinitum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slambinitum_params
      params.require(:slambinitum).permit(:name, :birthday, :whatsapp, :email, :follow, :memory, :quote, :thoughts, :picture)
    end
end
