class ListingPostsController < ApplicationController
  before_action :set_listing_post, only: [:show, :edit, :update, :destroy]

  # GET /listing_posts
  # GET /listing_posts.json
  def index
    @listing_posts = ListingPost.all
  end

  # GET /listing_posts/1
  # GET /listing_posts/1.json
  def show
  end

  # GET /listing_posts/new
  def new
    @listing_post = ListingPost.new
  end

  # GET /listing_posts/1/edit
  def edit
  end

  # POST /listing_posts
  # POST /listing_posts.json
  def create
    @listing_post = ListingPost.new(listing_post_params)

    respond_to do |format|
      if @listing_post.save
        format.html { redirect_to @listing_post, notice: 'Listing post was successfully created.' }
        format.json { render :show, status: :created, location: @listing_post }
      else
        format.html { render :new }
        format.json { render json: @listing_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listing_posts/1
  # PATCH/PUT /listing_posts/1.json
  def update
    respond_to do |format|
      if @listing_post.update(listing_post_params)
        format.html { redirect_to @listing_post, notice: 'Listing post was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing_post }
      else
        format.html { render :edit }
        format.json { render json: @listing_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listing_posts/1
  # DELETE /listing_posts/1.json
  def destroy
    @listing_post.destroy
    respond_to do |format|
      format.html { redirect_to listing_posts_url, notice: 'Listing post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing_post
      @listing_post = ListingPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_post_params
      params.require(:listing_post).permit(:Title, :Content,:image)
    end
end
