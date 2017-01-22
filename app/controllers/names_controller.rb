class NamesController < ApplicationController
  before_action :set_name, only: [:show, :update, :destroy]

  # GET /names
  # GET /names.json
  def index
    @names = Name.all

    render json: @names
  end

  # GET /names/1
  # GET /names/1.json
  def show
    render json: @name
  end

  # POST /names
  # POST /names.json
  def create
    @name = Name.new(name_params)

    if @name.save
      render json: @name, status: :created, location: @name
    else
      render json: @name.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /names/1
  # PATCH/PUT /names/1.json
  def update
    @name = Name.find(params[:id])

    if @name.update(name_params)
      head :no_content
    else
      render json: @name.errors, status: :unprocessable_entity
    end
  end

  # DELETE /names/1
  # DELETE /names/1.json
  def destroy
    @name.destroy

    head :no_content
  end

  private

    def set_name
      @name = Name.find(params[:id])
    end

    def name_params
      params.require(:name).permit(:name)
    end
end
