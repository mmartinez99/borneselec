require 'net/http'

class MongoidController < ApplicationController
  before_action :set_borneelec, only: [:show, :edit, :update, :destroy]
  protect_from_forgery :except => :create

    # GET /mongoid
    # GET /mongoid.json
  def index
    @bornelecs = Borneelec.all
  end

    # GET /mongoid/1
    # GET /mongoid/1.json
  def show
    @bornelec=Borneelec.find(params[:id])
  end
  # GET /mongoid/1
  # GET /mongoid/1.json
  def edit
    @bornelec=Borneelec.find(params[:id])
  end
    # GET /mongoid/new
  def new
    @bornelec = Borneelec.new
  end


    # POST /mongoid
    # POST /mongoid.json
  def create
    # @bornelec = Borneelec.new(borneelec_params)
    #
    # respond_to do |format|
    #   if @bornelec.save
    #     format.html { redirect_to @bornelec, notice: 'bornelec was successfully created.' }
    #     format.json { render :show, status: :created, location: @bornelec }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @bornelec.errors, status: :unprocessable_entity }
    #   end
    # end
    #

    @bornelec = Borneelec.new(borneelec_params)

        if @bornelec.save
            redirect_to action: "index"
        else
            render 'new'
        end
  end

    # PATCH/PUT /mongoid/1
    # PATCH/PUT /mongoid/1.json
  def update
    # respond_to do |format|
    #
    #   if @bornelec.update(borneelec_params)
    #     puts @bornelec['name']
    #     format.html { redirect_to @bornelec, notice: 'bornelec was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @bornelec }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @bornelec.errors, status: :unprocessable_entity }
    #   end
    # end
  @bornelec=Borneelec.find(params[:id])
  @bornelec.update(borneelec_params)
    redirect_to action: "index"


  end

    # DELETE /mongoid/1
    # DELETE /mongoid/1.json
  def destroy
    # @bornelec.destroy
    # respond_to do |format|
    #   format.html { redirect_to mongoid_url, notice: 'bornelec was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    #
    @bornelec=Borneelec.find(params[:id])
    @bornelec.destroy
    redirect_to action: "index"

  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_borneelec
    @bornelec = Borneelec.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def borneelec_params
    params.require(:borneelec).permit(:id, :name, :adresse, :ville,:codepostal,:latitude,:longitude,:tarif)
  end
  end
