require "features_helper"

RSpec.feature "Create Feedback." do
  let(:feedback_attributes) do
    {
      email: Faker::Internet.email,
      name: Faker::Name.name,
      message: Faker::Lorem.paragraph,
      phone: "+7 (911) 800-4000"
    }
  end

  scenario "Visitor creates feedback" do
    visit Web.routes.path(:new_feedback)

    fill_in "feedback[name]", with: feedback_attributes[:name]
    fill_in "feedback[email]", with: feedback_attributes[:email]
    fill_in "feedback[phone]", with: feedback_attributes[:phone]
    fill_in "feedback[message]", with: feedback_attributes[:message]
    click_button "Submit"

    open_email(ENV.fetch("FEEDBACK_EMAIL"))

    expect(current_email).to have_subject("Feedback")
    expect(current_email).to be_delivered_from(feedback_attributes[:email])

    expect(current_email).to have_body_text(feedback_attributes[:name])
    expect(current_email).to have_body_text(feedback_attributes[:phone])
    expect(current_email).to have_body_text(feedback_attributes[:email])
    expect(current_email).to have_body_text(feedback_attributes[:message])

    expect(page).to have_content("Have a question?")
  end
end
