require './lib/rps/rps'
class ResultController < ApplicationController

  def new
    render :new
  end
  def create
    name = params[:name]
    @result = Rps::Comparator.new(params).get_serialized_result
    result = Result.new(result: @result[:result], name: name)
    result.save!
    render :show
  end

  def show
    format.js {render :json => @result, :content_type => 'application/json'}
  end
end