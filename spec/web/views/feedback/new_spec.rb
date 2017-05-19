require 'spec_helper'
require_relative '../../../../apps/web/views/feedback/new'

describe Web::Views::Feedback::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/feedback/new.html.erb') }
  let(:view)      { Web::Views::Feedback::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
