module Web::Controllers::Feedback
  class New
    include Web::Action

    before :expose_feedback

    expose :feedback

    def call(params)
    end

    private

    def expose_feedback
      @feedback = Feedback.new()
    end
  end
end
