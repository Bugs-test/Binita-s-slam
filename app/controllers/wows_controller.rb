class WowsController < ApplicationController
  before_action :set_wow, only: [:show, :edit, :update, :destroy]

  # GET /wows
  # GET /wows.json
  def index
    @wows = Wow.all
  end

  # GET /wows/1
  # GET /wows/1.json
  def show
  end

  # GET /wows/new
  def new
    @wow = Wow.new
  end

  # GET /wows/1/edit
  def edit
  end

  # POST /wows
  # POST /wows.json
  def create
    @wow = Wow.new(wow_params)

    respond_to do |format|
      if @wow.save
        format.html { redirect_to @wow, notice: 'Wow was successfully created.' }
        format.json { render :show, status: :created, location: @wow }
      else
        format.html { render :new }
        format.json { render json: @wow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wows/1
  # PATCH/PUT /wows/1.json
  def update
    respond_to do |format|
      if @wow.update(wow_params)
        format.html { redirect_to @wow, notice: 'Wow was successfully updated.' }
        format.json { render :show, status: :ok, location: @wow }
      else
        format.html { render :edit }
        format.json { render json: @wow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wows/1
  # DELETE /wows/1.json
  def destroy
    @wow.destroy
    respond_to do |format|
      format.html { redirect_to wows_url, notice: 'Wow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wow
      @wow = Wow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wow_params
      params.fetch(:wow, {})
    end
end
