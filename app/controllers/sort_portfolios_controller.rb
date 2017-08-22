class SortPortfoliosController < ApplicationController

  def index
  end

  def output
    @search_word = params[:search_word]
    search_field = params[:search_field]
    if search_field != "all"
    	@query = "#{search_field}: \"#{@search_word}\""
    else
    	@query = @search_word
    end   
	render :action => 'index'
  end

  def update
    @field = params[:field] #field to be updated
    @new_content = params[:new_content]
    @checkmarks = params[:index]

    # Server is globally set in application.rb
    server = Rails.application.config.solr_server
    solr = RSolr.connect :url => server
    @checkmarks.each_with_index do |id, i|
      #found on https://github.com/rsolr/rsolr/issues/137
      solr.update(data: [{ :id => id, "#{@field}" => { "set" => @new_content}}].to_json, :headers => { 'Content-Type' => 'application/json' })
    end
  	solr.commit
  	solr.optimize
  	@redirected = true
  	render :action => 'index'
  	#redirect_to action: :index
  end

end
