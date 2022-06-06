class PipelineController < ApplicationController
  def index
    response = HTTParty.get("https://qa.pipelineplus.com/api/v1/user", 
    headers: { 
      "Authorization" => "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvcWEucGlwZWxpbmVwbHVzLmNvbSIsImlhdCI6MTY1MjIyNzk1NywibmJmIjoxNjUyMjI3OTU3LCJleHAiOjE2NTc0MTE5NTcsImRhdGEiOnsidXNlciI6eyJpZCI6IjQ1NzEifX19.MP7iNTqF5EUxi5R2pSx798D_MPc7G75i65rXZQoCilA"} )
    # rescue StandardError => e
    #   puts 'Encountered Error:' if @debug
    #   puts e.inspect if @debug
    #   puts e.full_message if @debug
    #   e
    # end

    render json: response
  end
end