class VoteSmsController < ApplicationController
  before_action :set_vote_sm, only: [:show,:edit, :update, :destroy]

  # GET /vote_sms
  # GET /vote_sms.json
  def index
    @vote_sms = VoteSm.all.group("compaign_name")    
  end

  # GET /vote_sms/1
  # GET /vote_sms/1.json
  def show
   @vote_sm= VoteSm.find_all_persons(params)   
  end

  # GET /vote_sms/new
  def new
    @vote_sm = VoteSm.new
  end

  # GET /vote_sms/1/edit
  def edit
  end

  # POST /vote_sms
  # POST /vote_sms.json
  def create
    @vote_sm = VoteSm.new(vote_sm_params)

    respond_to do |format|
      if @vote_sm.save
        format.html { redirect_to @vote_sm, notice: 'Vote sm was successfully created.' }
        format.json { render :show, status: :created, location: @vote_sm }
      else
        format.html { render :new }
        format.json { render json: @vote_sm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_sms/1
  # PATCH/PUT /vote_sms/1.json
  def update
    respond_to do |format|
      if @vote_sm.update(vote_sm_params)
        format.html { redirect_to @vote_sm, notice: 'Vote sm was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote_sm }
      else
        format.html { render :edit }
        format.json { render json: @vote_sm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_sms/1
  # DELETE /vote_sms/1.json
  def destroy
    @vote_sm.destroy
    respond_to do |format|
      format.html { redirect_to vote_sms_url, notice: 'Vote sm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_sm
      @vote_sm = VoteSm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_sm_params
      params.require(:vote_sm).permit(:vote_number, :compaign_name, :validity, :choice, :conn, :msisdn, :guid, :short_code)
    end
end
