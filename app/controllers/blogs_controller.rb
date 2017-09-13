class BlogsController < ApplicationController
  before_action :authenticate_user

  def index
    @blogs = Blog.all
    render json: @blogs, each_serializer: BlogSerializer
  end

  def show
    @blog = Blog.find(params[:id])
    render json: @blog, serializer: BlogSerializer
  end

  def create
    @blog = current_user.blogs.new(blog_params)

    if @blog.save
      render json: @blog, location: @blog
    else
      render json: @blog.errors
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end