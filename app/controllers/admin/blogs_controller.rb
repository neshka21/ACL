class Admin::BlogsController < ApplicationController
#----------index
def index
  @blog = Blog.all
end
#----------show de blog---------
def show
 @blog = Blog.find(params[:id])
end
#----------new and create -----
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
#---------edit blog--------
def edit
  @blog = Blog.find(params[:id])
end
def update
  @blog = Book.find(params[:id])
  if @blog.update(blog_params)
    redirect_to @blog
  else
    render :edit
  end
end
#---------destroy blog
def destroy
  @blog = Blog.find(params[:id])
  @blog.destroy

  redirect_to 
end
#------ blog params--------
private
def blog_params
  params.require(:blog).permit(:title, :imagen, :description, :img)
end
end
