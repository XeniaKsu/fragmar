class PerfumesController < ApplicationController
  before_action :set_perfume, only: %i[ show edit update destroy ]

  # GET /perfumes or /perfumes.json
  def index
    @perfumes = Perfume.all
  end

  # GET /perfumes/1 or /perfumes/1.json
  def show
  end

  # GET /perfumes/new
  def new
    @perfume = Perfume.new
  end

  # GET /perfumes/1/edit
  def edit
  end

  # POST /perfumes or /perfumes.json
  def create
    @perfume = Perfume.new(perfume_params)

    respond_to do |format|
      if @perfume.save
        format.html { redirect_to perfume_url(@perfume), notice: "Perfume was successfully created." }
        format.json { render :show, status: :created, location: @perfume }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @perfume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfumes/1 or /perfumes/1.json
  def update
    respond_to do |format|
      if @perfume.update(perfume_params)
        format.html { redirect_to perfume_url(@perfume), notice: "Perfume was successfully updated." }
        format.json { render :show, status: :ok, location: @perfume }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @perfume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfumes/1 or /perfumes/1.json
  def destroy
    @perfume.destroy

    respond_to do |format|
      format.html { redirect_to perfumes_url, notice: "Perfume was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfume
      @perfume = Perfume.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perfume_params
      params.require(:perfume).permit(:name, :brand, :description, :size, :price)
    end
end
