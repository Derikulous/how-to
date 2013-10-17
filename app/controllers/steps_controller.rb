class StepsController < ApplicationController
  before_filter :load_guide
  before_filter :load_step, :only => [:show, :edit, :update, :destroy]
  # GET /steps
  # GET /steps.json



  def index
    @steps = @guide.steps
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = @guide.steps.find(params[:id])
  end

  # GET /steps/new
  # GET /steps/new.json
  def new
    @step = @guide.steps.new(params[:step])
  end

  # GET /steps/1/edit
  def edit
    @step = @guide.steps.find(params[:id])
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = @guide.steps.new(params[:step])

    respond_to do |format|
     if @step.save
      format.html { redirect_to [@guide, @step], notice: 'Step was successfully created.' }
    else
      render action: "new" [@guide, @step]
    end

  # PUT /steps/1
  # PUT /steps/1.json
  def update
    @step = @guide.steps.find(params[:id])

    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to [@guide, @step], notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step = @guide.steps.find(params[:id])
    @step.destroy

    respond_to do |format|
      format.html { redirect_to guide_steps_path(@guide) }
      format.json { head :no_content }
    end
  end
end
