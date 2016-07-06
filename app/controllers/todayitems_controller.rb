class TodayitemsController < ApplicationController
  before_action :set_todayitem, only: [:show, :edit, :update, :destroy]

  # GET /todayitems
  # GET /todayitems.json
  def index
    @todayitems = Todayitem.all
  end

  # GET /todayitems/1
  # GET /todayitems/1.json
  def show
  end

  # GET /todayitems/new
  def new
    @todayitem = Todayitem.new
  end

  # GET /todayitems/1/edit
  def edit
  end

  # POST /todayitems
  # POST /todayitems.json
  def create
    @todayitem = Todayitem.new(todayitem_params)

    respond_to do |format|
      if @todayitem.save
        format.html { redirect_to @todayitem, notice: 'Todayitem was successfully created.' }
        format.json { render :show, status: :created, location: @todayitem }
      else
        format.html { render :new }
        format.json { render json: @todayitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todayitems/1
  # PATCH/PUT /todayitems/1.json
  def update
    respond_to do |format|
      if @todayitem.update(todayitem_params)
        format.html { redirect_to @todayitem, notice: 'Todayitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @todayitem }
      else
        format.html { render :edit }
        format.json { render json: @todayitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todayitems/1
  # DELETE /todayitems/1.json
  def destroy
    @todayitem.destroy
    respond_to do |format|
      format.html { redirect_to todayitems_url, notice: 'Todayitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todayitem
      @todayitem = Todayitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todayitem_params
      params.require(:todayitem).permit(:name, :calorie, :foodimage, :tot_rating, :tot_num, :tdate)
    end
end
