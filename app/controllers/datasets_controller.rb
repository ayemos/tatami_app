class DatasetsController < ApplicationController
  before_action :set_dataset, only: [:show, :edit, :update, :destroy]

  # GET /datasets
  # GET /datasets.json
  def index
    @datasets = Dataset.all
  end

  # GET /datasets/1
  # GET /datasets/1.json
  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render :show, location: @dataset }
    end
  end

  # GET /datasets/new
  def new
    @dataset = Dataset.new
  end

  # GET /datasets/host_type_selected
  def host_type_changed
    case params['host_type']
    when 's3'
      @dataset = S3Dataset.new
    end

    respond_to do |format|
      format.js { render :host_type_changed, dataset: @dataset }
    end
  end

  # GET /datasets/1/edit
  def edit
  end

  # POST /datasets
  # POST /datasets.json
  def create
    @dataset = Dataset.new(dataset_params)

    respond_to do |format|
      if @dataset.save
        format.html { redirect_to datasets_url, notice: 'dataset was successfully created.' }
        format.json { render :show, status: :created, location: @dataset }
      else
        format.html { render :new }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datasets/1
  # PATCH/PUT /datasets/1.json
  def update
    respond_to do |format|
      if @dataset.update(dataset_params)
        format.html { redirect_to @dataset, notice: 'dataset was successfully updated.' }
        format.json { render :show, status: :ok, location: @dataset }
      else
        format.html { render :edit }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datasets/1
  # DELETE /datasets/1.json
  def destroy
    @dataset.destroy
    respond_to do |format|
      format.html { redirect_to datasets_url, notice: 'dataset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # XXX: Might not be a good solution
    def set_dataset
      @dataset = Dataset.where(name: params[:id]).first || Dataset.find(params[:id])
    end

    def type
      params[:type]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataset_params
      params.require(type.underscore.to_sym).permit(:name, :bucket_name, :prefix)
    end
end
