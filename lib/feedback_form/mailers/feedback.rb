class Mailers::Feedback
  include Hanami::Mailer

  from    :sender
  to      ENV.fetch("FEEDBACK_EMAIL")
  subject "Feedback"

  %i(name email phone message).each do |prop|
    define_method prop do
      feedback.public_send(prop)
    end
  end

  private

  def sender
    feedback.email
  end
end
