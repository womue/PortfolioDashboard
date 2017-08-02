# frozen_string_literal: true
class SearchBuilder < Blacklight::SearchBuilder
  include Blacklight::Solr::SearchBuilderBehavior
  include BlacklightAdvancedSearch::AdvancedSearchBuilder
  self.default_processor_chain += [:add_advanced_parse_q_to_solr, :add_advanced_search_to_solr]
  #self.default_processor_chain += [:show_cohort_data]

  ##
  # @example Adding a new step to the processor chain
  #   self.default_processor_chain += [:add_custom_data_to_query]
  #
  #   def add_custom_data_to_query(solr_parameters)
  #     solr_parameters[:custom] = blacklight_params[:user_value]
  #   end

  # (1) Extending the SearchBuilder
  # To add new search behaviors, the easiest route is to add  steps to the SearchBuilder model
  # First, you should create the method.
  #def show_cohort_data(solr_parameters)
    # add a new solr facet query ('fq') parameter that limits results to those with a 'public_b' field of 1 
    #solr_parameters[:fq] ||= []
    #solr_parameters[:fq] << 'public_b:1'
  #end  


end
