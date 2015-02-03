module Api::V1
  class SubscriptionController < ApplicationController
    
    # GET /version 
    def version
      render json: { version: "1.0" }
    end

    # GET /subscribers
    def subscribers
      render json: { subcribers: Subscriber.all }
    end  

    # POST /subscribers/sms
    def sms_subscribers
      # create a subscriber from an SMS source
    end

    # POST /subscribers/whatsapp
    def whatsapp_subscribers
      # Whatsapp messages from Ongair
    end

    # POST /subscribers/wechat
    def wechat_subscribers
      # WeChat messages
    end
  end
end