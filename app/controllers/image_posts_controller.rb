class ImagePostsController < ApplicationController
  before_action :set_image_post, only: [:show, :edit, :update, :destroy]

  # GET /image_posts
  # GET /image_posts.json
  def index
    if (session[:authenticated] == true)
      @image_posts = ImagePost.all
      render 'index'
    else
      redirect_to '/authenticate'
    end
  end

  # GET /image_posts/1
  # GET /image_posts/1.json
  def show
    if (session[:authenticated] == true)

    else
      render 'consume_show'
    end
  end

  def consume
    @image_posts = ImagePost.all
    render 'consume'
  end

  def authenticate
    pass = params[:paz]
    if (pass == "Mmw6dvjpf2")
      session[:authenticated] = true
      redirect_to '/image_posts'
    else
      session[:authenticated] = false
    end
  end

  # GET /image_posts/new
  def new
    if (session[:authenticated] == true)
      @image_post = ImagePost.new
    else
      redirect_to '/authenticate'
    end
  end

  # GET /image_posts/1/edit
  def edit
    if (session[:authenticated] == true)

    else
      redirect_to '/authenticate'
    end
  end

  # POST /image_posts
  # POST /image_posts.json
  def create
    @image_post = ImagePost.new(image_post_params)

    respond_to do |format|
      if @image_post.save
        format.html { redirect_to @image_post, notice: 'Image post was successfully created.' }
        format.json { render :show, status: :created, location: @image_post }
      else
        format.html { render :new }
        format.json { render json: @image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_posts/1
  # PATCH/PUT /image_posts/1.json
  def update
    respond_to do |format|
      if @image_post.update(image_post_params)
        format.html { redirect_to @image_post, notice: 'Image post was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_post }
      else
        format.html { render :edit }
        format.json { render json: @image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_posts/1
  # DELETE /image_posts/1.json
  def destroy
    @image_post.destroy
    respond_to do |format|
      format.html { redirect_to image_posts_url, notice: 'Image post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_post
      @image_post = ImagePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_post_params
      params.require(:image_post).permit(:title, :description, :image)
    end
end
