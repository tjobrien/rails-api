class PipelineController < ApplicationController
  def index
    response = HTTParty.get("https://api.pipelineplus.com/api/v1/user", 
    headers: { 
      "Authorization" => "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBpcGVsaW5lcGx1cy5jb20iLCJpYXQiOjE2NTExNjUwODUsIm5iZiI6MTY1MTE2NTA4NSwiZXhwIjoxNjU2MzQ5MDg1LCJkYXRhIjp7InVzZXIiOnsiaWQiOiI0NTcxIn19fQ.P-Zrf6JzUbfr_xsdobXOG8O5_ULoBXt3_NSAMYtn020"} )
    # rescue StandardError => e
    #   puts 'Encountered Error:' if @debug
    #   puts e.inspect if @debug
    #   puts e.full_message if @debug
    #   e
    # end

    render json: response
  end
end