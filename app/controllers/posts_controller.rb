class PostsController < ApplicationController
  def index
    render json: { message: "Foundation working!"}
  end
end
