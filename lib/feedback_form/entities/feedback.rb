class Feedback < Hanami::Entity
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  PHONE_FORMAT = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/

  attributes do
    attribute :name,    Types::String
    attribute :email,   Types::String #.constrained(format: EMAIL_FORMAT)
    attribute :message, Types::String
    attribute :phone,   Types::String #.constrained(format: PHONE_FORMAT)
  end
end
