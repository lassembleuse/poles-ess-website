module Api
  class SubscribeNewsletter

    def initialize(api_instance = Api::SendinblueSubscriber.new)
      @api_instance = api_instance
    end

    def call(email)
      @api_instance.create_subscriber(email)
    end
  end

  class SubscribeNewsletterError < StandardError; end
end



