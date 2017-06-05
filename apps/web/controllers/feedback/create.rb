module Web::Controllers::Feedback
  class Create
    include Web::Action

    before :expose_feedback

    expose :feedback

    params do
      required(:feedback).schema do
        required(:email).filled(:str?, format?: Feedback::EMAIL_FORMAT)
        optional(:name).filled(:str?)
        required(:message).filled(:str?)
        optional(:phone).filled(:str?, format?: Feedback::PHONE_FORMAT)
      end
    end

    def call(params)
      if params.valid?
        Mailers::Feedback.deliver(feedback: feedback)
        redirect_to routes.root_path
      else
        self.status = 422
      end
    end

    private

    def expose_feedback
      @feedback = Feedback.new(params[:feedback])
    end
  end
end
