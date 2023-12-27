class PontsController < ApplicationController
  before_action :set_pont, only: %i[ show edit update destroy ]

  # GET /ponts or /ponts.json
  def index
    @ponts = Pont.all.order(created_at: :desc)
  end

  # GET /ponts/1 or /ponts/1.json
  def show
  end

  # GET /ponts/new
  def new
    @pont = Pont.new
    @ponts = Pont.all
  end

  # GET /ponts/1/edit
  def edit
  end

  # POST /ponts or /ponts.json
  def create
    @pont = Pont.new(pont_params)

    respond_to do |format|
      if @pont.save
        format.html { redirect_to pont_url(@pont), notice: "Pont was successfully created." }
        format.turbo_stream {render :create, locals: {pont: @pont}}
        format.json { render :show, status: :created, location: @pont }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream {render :new, status: :unprocessable_entity, locals: {pont: @pont}}
        format.json { render json: @pont.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ponts/1 or /ponts/1.json
  def update
    respond_to do |format|
      if @pont.update(pont_params)
        format.html { redirect_to pont_url(@pont), notice: "Pont was successfully updated." }
        format.json { render :show, status: :ok, location: @pont }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pont.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponts/1 or /ponts/1.json
  def destroy
    @pont.destroy

    respond_to do |format|
      format.html { redirect_to ponts_url, notice: "Pont was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pont
      @pont = Pont.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pont_params
      params.require(:pont).permit(:body)
    end
end
