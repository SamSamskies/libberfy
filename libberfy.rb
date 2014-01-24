require 'sinatra'
require 'madlibber'
require 'json'

before do
  response.header['Access-Control-Allow-Origin'] = '*'
  response.headers["Access-Control-Allow-Methods"] = "GET"
end

get '/' do
  content_type :json
  num_of_blanks = params[:blanks].to_i if params[:blanks]
  html_form = params[:html_form].to_i if params[:html_form]

  options = { num_of_blanks: num_of_blanks, html_form: html_form }
  options.delete :num_of_blanks unless num_of_blanks

  { madlib: (MadLibber.libberfy params[:q] , options) }.to_json
end