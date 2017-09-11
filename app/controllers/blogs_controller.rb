class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @blogs = Blog.all
    render json: @blogs, each_serializer: BlogSerializer
  end

  def show
    @blog = Blog.find(params[:id])
    render json: @blog, serializer: BlogSerializer
  end

end