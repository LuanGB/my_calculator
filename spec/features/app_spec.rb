require_relative '../../spec/spec_helper'

RSpec.describe 'Calculator App' do
  def app
    App
  end

  it 'loads the homepage' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sinatra Calculator')
  end

  it 'performs an addition' do
    post '/calculate', a: '3', b: '5', operation: '+'
    expect(last_response.body).to include('3 + 5 = 8.0')
  end

  it 'performs a multiplication' do
    post '/calculate', a: '3', b: '5', operation: '*'
    expect(last_response.body).to include('3 * 5 = 15.0')
  end

  it 'performs a subtraction' do
    post '/calculate', a: '3', b: '5', operation: '-'
    expect(last_response.body).to include('3 - 5 = -2.0')
  end

  it 'performs a division' do
    post '/calculate', a: '3', b: '5', operation: '/'
    expect(last_response.body).to include('3 / 5 = 0.6')
  end
end