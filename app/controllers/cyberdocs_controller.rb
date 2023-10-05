class CyberdocsController < ApplicationController
  before_action :set_cyberdoc, only: %i[ show edit update destroy ]

  # GET /cyberdocs or /cyberdocs.json
  def index
    @cyberdocs = Cyberdoc.all
  end

  # GET /cyberdocs/1 or /cyberdocs/1.json
  def show
  end

  # GET /cyberdocs/new
  def new
    @cyberdoc = Cyberdoc.new
  end

  # GET /cyberdocs/1/edit
  def edit
  end

  # POST /cyberdocs or /cyberdocs.json
  def create
    @cyberdoc = Cyberdoc.new(cyberdoc_params)

    respond_to do |format|
      if @cyberdoc.save
        format.html { redirect_to cyberdoc_url(@cyberdoc), notice: "Cyberdoc was successfully created." }
        format.json { render :show, status: :created, location: @cyberdoc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cyberdoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cyberdocs/1 or /cyberdocs/1.json
  def update
    respond_to do |format|
      if @cyberdoc.update(cyberdoc_params)
        format.html { redirect_to cyberdoc_url(@cyberdoc), notice: "Cyberdoc was successfully updated." }
        format.json { render :show, status: :ok, location: @cyberdoc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cyberdoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cyberdocs/1 or /cyberdocs/1.json
  def destroy
    @cyberdoc.destroy

    respond_to do |format|
      format.html { redirect_to cyberdocs_url, notice: "Cyberdoc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyberdoc
      @cyberdoc = Cyberdoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cyberdoc_params
      params.require(:cyberdoc).permit(:first_name, :last_name, :email, :phone, :insta)
    end
end
