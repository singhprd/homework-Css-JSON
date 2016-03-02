require 'sinatra'
require 'sinatra/contrib/all'
require 'json'
require_relative 'models/WordFormatter'

  get '/' do
    erb( :homepage )
  end

  get '/address' do
      @address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
    postcode = WordFormatter.new(@address)
    @postcode_formatted = postcode.postcode_upcase
    erb( :address )
  end
  
  get '/capitalize/:string' do
    @capitalize = params[:string].capitalize
    erb( :capitalize )
  end
