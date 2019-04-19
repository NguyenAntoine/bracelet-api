class PatentsController < ApplicationController
  before_action :set_patent, only: [:show, :edit, :update, :destroy]

  # GET /patents
  # GET /patents.json
  def index
    @patents = Patent.all
  end

  # GET /patents/1
  # GET /patents/1.json
  def show
  end

  # GET /patents/new
  def new
    @patent = Patent.new
  end

  # GET /patents/1/edit
  def edit
  end

  # POST /patents
  # POST /patents.json
  def create
    @patent = Patent.new(patent_params)

    respond_to do |format|
      if @patent.save
        format.html { redirect_to @patent, notice: 'Patent was successfully created.' }
        format.json { render :show, status: :created, location: @patent }
      else
        format.html { render :new }
        format.json { render json: @patent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patents/1
  # PATCH/PUT /patents/1.json
  def update
    respond_to do |format|
      if @patent.update(patent_params)
        format.html { redirect_to @patent, notice: 'Patent was successfully updated.' }
        format.json { render :show, status: :ok, location: @patent }
      else
        format.html { render :edit }
        format.json { render json: @patent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patents/1
  # DELETE /patents/1.json
  def destroy
    @patent.destroy
    respond_to do |format|
      format.html { redirect_to patents_url, notice: 'Patent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patent
      @patent = Patent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patent_params
      params.fetch(:patent, {})
    end
end
