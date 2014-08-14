class MarkdownsController < ApplicationController
  before_action :set_markdown, only: [:show, :edit, :update, :destroy]

  # GET /markdowns
  # GET /markdowns.json
  def index
    @markdowns = Markdown.all
  end

  # GET /markdowns/1
  # GET /markdowns/1.json
  def show
  end

  # GET /markdowns/new
  def new
    @markdown = Markdown.new
  end

  # GET /markdowns/1/edit
  def edit
  end

  # POST /markdowns
  # POST /markdowns.json
  def create
    @markdown = Markdown.new(markdown_params)

    respond_to do |format|
      if @markdown.save
        format.html { redirect_to @markdown, notice: 'Markdown was successfully created.' }
        format.json { render :show, status: :created, location: @markdown }
      else
        format.html { render :new }
        format.json { render json: @markdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /markdowns/1
  # PATCH/PUT /markdowns/1.json
  def update
    respond_to do |format|
      if @markdown.update(markdown_params)
        format.html { redirect_to @markdown, notice: 'Markdown was successfully updated.' }
        format.json { render :show, status: :ok, location: @markdown }
      else
        format.html { render :edit }
        format.json { render json: @markdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markdowns/1
  # DELETE /markdowns/1.json
  def destroy
    @markdown.destroy
    respond_to do |format|
      format.html { redirect_to markdowns_url, notice: 'Markdown was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def preview_api
    @preview = Markdown.new(markdown_params.tapp).tapp.preview
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_markdown
      @markdown = Markdown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def markdown_params
      params.require(:markdown).permit(:title, :content)
    end
end
