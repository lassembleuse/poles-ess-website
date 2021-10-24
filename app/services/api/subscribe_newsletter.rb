module Api
  class SubscribeNewsletter

    def initialize(api_instance = Api::SendinblueSubscriber.new)
      @api_instance = api_instance
    end

    def call(email)
      params = @api_instance.add_subscriber_params(email)
      @api_instance.create_subscriber(params)
    end
  end
end



