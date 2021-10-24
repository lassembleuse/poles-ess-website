module Api
  class SendinblueSubscriber
    def initialize
      @api_instance = SibApiV3Sdk::ContactsApi.new
    end

    def add_subscriber_params(email)
      {
        email: email,
        listIds: [ENV['SENDINBLUE_NEWSLETTER_ID'].to_i],
        updateEnabled: true
      }
    end

    def create_subscriber(params)
      @api_instance.create_contact(SibApiV3Sdk::CreateContact.new(params))
    end
  end
end