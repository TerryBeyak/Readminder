class ArticlesController < ApplicationController

  respond_to :html, :xml, :json
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all

    respond_to do |format|
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @article = Article.new
    @article.build_location
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    derp = params[:location]
    @article = Article.create(params[:article])
    loc = Location.create(:title => derp)
    @article.location = loc

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Location was successfully created.' }
        format.json { render json: @article, status: :created, article: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @article = Article.find(params[:id])
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end
end
