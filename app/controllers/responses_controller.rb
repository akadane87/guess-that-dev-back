class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :update, :destroy]

  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all

    render json: @responses
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
    render json: @response
  end

  # POST /responses
  # POST /responses.json
  def create
    @response = Response.new(response_params)

    if @response.save
      render json: @response, status: :created, location: @response
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    @response = Response.find(params[:id])

    if @response.update(response_params)
      head :no_content
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    @response = Response.find(params[:id])
    @responses.destory

    head :no_content
  end

  private

  def set_response
    @response = Response.find(params[:id])
  end

  def response_params
    params.require(:response).permit(:response, :user_id, :picture_id)
  end
end
