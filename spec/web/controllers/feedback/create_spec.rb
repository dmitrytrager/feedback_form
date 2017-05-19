require 'spec_helper'
require_relative '../../../../apps/web/controllers/feedback/create'

describe Web::Controllers::Feedback::Create do
  let(:action) { Web::Controllers::Feedback::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
