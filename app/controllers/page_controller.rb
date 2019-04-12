class PageController < ApplicationController

def index	
	@blog = Blog.limit(4)
end


end