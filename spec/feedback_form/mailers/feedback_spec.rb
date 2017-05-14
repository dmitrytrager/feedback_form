require 'spec_helper'

describe Mailers::Feedback do
  it 'delivers email' do
    mail = Mailers::Feedback.deliver
  end
end
