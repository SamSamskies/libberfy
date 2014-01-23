require 'sinatra'
require 'madlibber'
require 'json'

get '/' do
  content_type :json
  { madlib: MadLibber.libberfy(params[:q]) }.to_json
end