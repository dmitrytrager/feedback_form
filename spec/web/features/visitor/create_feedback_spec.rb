require "spec_helper"

feature "Create Feedback." do
  let(:feedback_attributes) do
    {
      email: Faker::Internet.email,
      name: Faker::Name.name,
      message: Faker::Lorem.paragraph,
      phone: Faker::PhoneNumber.phone_number
    }
  end

  scenario "Visitor creates feedback" do
    visit new_feedback_path

    fill_in "feedback[name]", feedback_attributes[:name]
    fill_in "feedback[email]", feedback_attributes[:email]
    fill_in "feedback[phone]", feedback_attributes[:phone]
    fill_in "feedback[message]", feedback_attributes[:message]
    click_button "Submit"

    open_email(ENV.fetch("FEEDBACK_EMAIL"))

    expect(current_email).to have_subject("Feedback")
    expect(current_email).to be_delivered_from(feedback_attributes[:email])

    expect(current_email).to have_body_text(feedback_attributes[:name])
    expect(current_email).to have_body_text(feedback_attributes[:phone])
    expect(current_email).to have_body_text(feedback_attributes[:email])
    expect(current_email).to have_body_text(feedback_attributes[:message])

    expect(page).to have_content("Email was successfully sent.")
  end
end
