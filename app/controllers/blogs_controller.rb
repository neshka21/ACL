class BlogsController < ApplicationController

def index
	@blog = Blog.all
end

def show
 @blog = Blog.find(params[:id])
end

def update
  @blog = Blog.find(params[:id])
  if @blog.update(blog_params)
    redirect_to @blog
  else
    render :edit
  end
end

def new
   @blog = Blog.new 
end

def create
   @blog = Blog.new(blog_params)
   if @blog.save
    redirect_to @blog
  else
    render :new
  end
end


private
def blog_params
	params.require(:blog).permit(:title, :imagen, :description)
end


end

