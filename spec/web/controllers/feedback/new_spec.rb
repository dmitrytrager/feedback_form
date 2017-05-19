require 'spec_helper'
require_relative '../../../../apps/web/controllers/feedback/new'

describe Web::Controllers::Feedback::New do
  let(:action) { Web::Controllers::Feedback::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
