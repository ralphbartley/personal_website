class BaseBuddyController < ApplicationController
  before_action :set_base_design, only: %i[ show edit update destroy ]

  # GET /base_buddy or /base_buddy.json
  def index
    @base_buddy = BaseDesign.all
  end

  # GET /base_buddy/1 or /base_buddy/1.json
  def show
  end

  # GET /base_buddy/new
  def new
    @base_design = BaseDesign.new
  end

  # GET /base_buddy/1/edit
  def edit
  end

  # POST /base_buddy or /base_buddy.json
  def create
    @base_design = BaseDesign.new(base_design_params)

    respond_to do |format|
      if @base_design.save
        format.html { redirect_to @base_design, notice: "Base design was successfully created." }
        format.json { render :show, status: :created, location: @base_design }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @base_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_buddy/1 or /base_buddy/1.json
  def update
    respond_to do |format|
      if @base_design.update(base_design_params)
        format.html { redirect_to @base_design, notice: "Base design was successfully updated." }
        format.json { render :show, status: :ok, location: @base_design }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @base_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_buddy/1 or /base_buddy/1.json
  def destroy
    @base_design.destroy
    respond_to do |format|
      format.html { redirect_to base_buddy_url, notice: "Base design was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_design
      @base_design = BaseDesign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def base_design_params
      params.require(:base_design).permit(:title, :data)
    end
end
