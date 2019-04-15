class PageController < ApplicationController

def index	
	@blog = Blog.limit(4)
	@service = Service.limit(6)
end
def login
	
end

end