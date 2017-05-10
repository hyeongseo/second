class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
  end

  def edit
    @content = Content.find(params[:id])
  end

  def create
    @content = Content.new(params.require(:content).permit(:title, :body))
    @content.save
    redirect_to @content
  end

  def updated
    @content = Content.find(params[:id])
    @content.update(params.require(:content).permit(:title,:body))
    redirect_to @content
  end

  def destroy
    @content=Content.find(params[:id])
    @content.destroy
    redirect_to contents_path
  end
end
