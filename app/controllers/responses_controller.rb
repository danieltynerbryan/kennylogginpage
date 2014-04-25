class ResponsesController < ApplicationController

  def index
    @responses = Response.order("name desc").all
	@response = Response.new
    respond_to do |format|
      format.html 
      format.json { render json: @responses }
    end
  end
  
  def get_response
  	@response = Response.first(:order => "RANDOM()")
  	render partial: "kenny_loggin/response"
  end

  def create
    @response = Response.new(params[:response])
    respond_to do |format|
      if @response.save
        format.html { redirect_to responses_path, notice: 'Response was successfully created.' }
        format.json { render json: responses_path, status: :created, location: @response }
      else
        format.html { render action: "index" }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy

    respond_to do |format|
      format.html { redirect_to responses_url }
      format.json { head :no_content }
    end
  end

end
