class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end
  def new
    # this is where a form will appear
    @story = Story.new
    
  end
  
  def create
    # this will be invoked when the POST from the form comes in.
    
    @story = Story.new(params[:story])
    if @story.valid? and @story.save
      redirect_to stories_path
    else
      render :action => :new
    end
  end
  end
