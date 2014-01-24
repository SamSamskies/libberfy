require 'sinatra'
require 'madlibber'
require 'json'

before do
  response.header['Access-Control-Allow-Origin'] = '*'
  response.headers["Access-Control-Allow-Methods"] = "GET"
end

get '/' do
  content_type :json
  num_of_blanks = params[:blanks]

  if num_of_blanks
    madlib = MadLibber.libberfy params[:q], { num_of_blanks: num_of_blanks.to_i }
  else
    madlib = MadLibber.libberfy params[:q]
  end

  { madlib: madlib }.to_json
end