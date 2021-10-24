module Api
  class SendinblueSubscriber
    def initialize
      @api_instance = SibApiV3Sdk::ContactsApi.new
    end

    def create_subscriber(email)
      begin
        @api_instance.create_contact(SibApiV3Sdk::CreateContact.new(params(email)))
      rescue SibApiV3Sdk::ApiError => e
        raise SubscribeNewsletterError
      end
    end

    def params(email)
      {
        email: email,
        listIds: [ENV['SENDINBLUE_NEWSLETTER_ID'].to_i],
        updateEnabled: true
      }
    end
  end
end