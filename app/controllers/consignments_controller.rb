class ConsignmentsController < ApplicationController
  before_action :set_consignment, only: [:show, :edit, :update, :destroy]

  # GET /consignments
  # GET /consignments.json
  def index
    @consignments = Consignment.all
  end

  # GET /consignments/1
  # GET /consignments/1.json
  def show
  end

  # GET /consignments/new
  def new
    @consignment = Consignment.new
  end

  # GET /consignments/1/edit
  def edit
  end

  # POST /consignments
  # POST /consignments.json
  def create
    @consignment = Consignment.new(consignment_params)

    respond_to do |format|
      if @consignment.save
        format.html { redirect_to @consignment, notice: 'Consignment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @consignment }
      else
        format.html { render action: 'new' }
        format.json { render json: @consignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consignments/1
  # PATCH/PUT /consignments/1.json
  def update
    respond_to do |format|
      if @consignment.update(consignment_params)
        format.html { redirect_to @consignment, notice: 'Consignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @consignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consignments/1
  # DELETE /consignments/1.json
  def destroy
    @consignment.destroy
    respond_to do |format|
      format.html { redirect_to consignments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consignment
      @consignment = Consignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consignment_params
      params.require(:consignment).permit(:owner_id, :good_id)
    end
end
