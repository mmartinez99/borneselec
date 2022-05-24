class BornesController < ApplicationController

  before_action :set_borne, only: [:show, :edit, :update, :destroy]

  # GET /bornes
  # GET /bornes.json
  def index
    @bornes = Borne.all
  end

  # GET /bornes/1
  # GET /bornes/1.json
  def show
    sql = "Select *    FROM bornes where id ="+@borne.id.to_s

    @records_array = ActiveRecord::Base.connection.exec_query(sql)




    @result_array = ['something', 'second_something',@borne.id ]
  end

  # GET /bornes/new
  def new
    @borne = Borne.new
  end

  # GET /bornes/1/edit
  def edit

    sql = "Select * FROM bornes   where id ="+@borne.id.to_s

    @records_array = ActiveRecord::Base.connection.exec_query(sql)

    @result_array = ['something', 'second_something',@borne.id ]

  end

  # POST /bornes
  # POST /bornes.json
  def create
    @borne = Borne.new(borne_params)
    p @borne.to_s
    p @borne.id

    respond_to do |format|
      if @borne.save
        format.html { redirect_to @borne, notice: 'borne was successfully created.' }
        format.json { render :show, status: :created, location: @borne }
      else
        format.html { render :new }
        format.json { render json: @borne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bornes/1
  # PATCH/PUT /bornes/1.json
  def update
    respond_to do |format|
      if @borne.update(borne_params)
        format.html { redirect_to @borne, notice: 'borne was successfully updated.' }
        format.json { render :show, status: :ok, location: @borne }
      else
        format.html { render :edit }
        format.json { render json: @borne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bornes/1
  # DELETE /bornes/1.json
  def destroy
    @borne.destroy
    respond_to do |format|
      format.html { redirect_to bornes_url, notice: 'borne was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_borne
    @borne = Borne.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def borne_params
    params.require(:borne).permit(:Adresse, :Ville, :CodePostal , :Latitude, :Longitude, :Tarif)
  end
end
