class WubookFetchesController < ApplicationController
  before_action :set_wubook_fetch, only: [:show, :edit, :update, :destroy]

  # GET /wubook_fetches
  # GET /wubook_fetches.json
  def index
    @wubook_fetches = WubookFetch.all
  end

  # GET /wubook_fetches/1
  # GET /wubook_fetches/1.json
  def show
  end

  # GET /wubook_fetches/new
  def new
    @wubook_fetch = WubookFetch.new
  end

  # GET /wubook_fetches/1/edit
  def edit
  end

  # POST /wubook_fetches
  # POST /wubook_fetches.json
  def create
    @wubook_fetch = WubookFetch.new(wubook_fetch_params)

    respond_to do |format|
      if @wubook_fetch.save
        format.html { redirect_to @wubook_fetch, notice: 'Wubook fetch was successfully created.' }
        format.json { render :show, status: :created, location: @wubook_fetch }
      else
        format.html { render :new }
        format.json { render json: @wubook_fetch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wubook_fetches/1
  # PATCH/PUT /wubook_fetches/1.json
  def update
    respond_to do |format|
      if @wubook_fetch.update(wubook_fetch_params)
        format.html { redirect_to @wubook_fetch, notice: 'Wubook fetch was successfully updated.' }
        format.json { render :show, status: :ok, location: @wubook_fetch }
      else
        format.html { render :edit }
        format.json { render json: @wubook_fetch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wubook_fetches/1
  # DELETE /wubook_fetches/1.json
  def destroy
    @wubook_fetch.destroy
    respond_to do |format|
      format.html { redirect_to wubook_fetches_url, notice: 'Wubook fetch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wubook_fetch
      @wubook_fetch = WubookFetch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wubook_fetch_params
      params.require(:wubook_fetch).permit(:outcome, :raw, :processed)
    end
end
