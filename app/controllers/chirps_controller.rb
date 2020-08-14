class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.all
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  def new
    @chirp = Chirp.new
  end

  def create
    @chirp = Chirp.new(chirp_params)
    @chirp.save_chirp

    respond_to do |format|
      if @chirp.save
        format.html { redirect_to @chirp, notice: 'Chirp was successfully created.' }
        format.json { render :show, status: :created, location: @chirp }
      else
        format.html { render :new }
        format.json { render json: @chirp.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote
    @chirp = Chirp.find(params[:id])
    @chirp.votes << Vote.new
    redirect_to chirps_path
  end

  private

  def chirp_params
    params.require(:chirp).permit(:text)
  end
end
