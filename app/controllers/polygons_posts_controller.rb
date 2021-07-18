class PolygonsPostsController < ApplicationController
  before_action :set_polygons_post, only: %i[ show edit update destroy ]

  # GET /polygons_posts or /polygons_posts.json
  def index
    @polygons_posts = PolygonsPost.all
  end

  # GET /polygons_posts/1 or /polygons_posts/1.json
  def show
  end

  # GET /polygons_posts/new
  def new
    @polygons_post = PolygonsPost.new
  end

  # GET /polygons_posts/1/edit
  def edit
  end

  # POST /polygons_posts or /polygons_posts.json
  def create
    @polygons_post = PolygonsPost.new(polygons_post_params)

    respond_to do |format|
      if @polygons_post.save
        format.html { redirect_to @polygons_post, notice: "Polygons post was successfully created." }
        format.json { render :show, status: :created, location: @polygons_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @polygons_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polygons_posts/1 or /polygons_posts/1.json
  def update
    respond_to do |format|
      if @polygons_post.update(polygons_post_params)
        format.html { redirect_to @polygons_post, notice: "Polygons post was successfully updated." }
        format.json { render :show, status: :ok, location: @polygons_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @polygons_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polygons_posts/1 or /polygons_posts/1.json
  def destroy
    @polygons_post.destroy
    respond_to do |format|
      format.html { redirect_to polygons_posts_url, notice: "Polygons post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polygons_post
      @polygons_post = PolygonsPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def polygons_post_params
      params.require(:polygons_post).permit(:title, :body)
    end
end
