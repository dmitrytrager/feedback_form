require "slim"

module Web::Views::Feedback
  class New
    include Web::View

    def form
      form_for :feedback, routes.feedback_path  do
        div class: "form-inputs" do
          label :name
          text_field :name
          br
          label :email
          text_field :email
          br
          label :phone
          text_field :phone
          br
          label :message
          text_field :message, as: :text
          br
        end

        div class: "form-actions" do
          submit "Submit"
        end
      end
    end
  end
end
