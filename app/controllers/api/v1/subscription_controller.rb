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
      puts params
    end

    # POST /subscribers/whatsapp
    def whatsapp_subscribers
      # Whatsapp messages from Ongair
      if Subscriber.find_by(external_id: params[:phone_number], source: "WhatsApp").nil?
        Subscriber.create!(external_id: params[:phone_number], source: "WhatsApp")
      else
        
      end
    end

    # POST /subscribers/wechat
    def wechat_subscribers
      # WeChat messages
    end
  end
end