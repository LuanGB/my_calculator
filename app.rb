require 'sinatra'
require 'erb'
require_relative 'models/calculator'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/calculate' do
    @a = params[:a]
    @b = params[:b]
    @operation = params[:operation]
    calculator = Calculator.new
    @result = calculator.calculate(@a, @b, @operation)
    erb :result
  end
end