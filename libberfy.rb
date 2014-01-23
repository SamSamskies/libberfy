require 'sinatra'
require 'madlibber'
require 'json'

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