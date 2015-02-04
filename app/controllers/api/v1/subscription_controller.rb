require 'action_view'
require 'wechat'

module Api::V1
  class SubscriptionController < ApplicationController
    include ActionView::Helpers::DateHelper

    skip_before_action :verify_authenticity_token

    # GET /subscription/version 
    def version
      render json: { version: "1.0" }
    end

    # GET /subscription/subscribers
    def subscribers
      render json: { subcribers: Subscriber.all }
    end  

    # POST /subscription/sms
    def sms_subscribers
      # create a subscriber from an SMS source
      puts params
    end

    # POST /subscription/whatsapp
    def whatsapp_subscribers
      # Whatsapp messages from Ongair
      if params[:notification_type] == "MessageReceived" && is_optin?(params[:text]) && new_subscriber?("WhatsApp",params[:phone_number])                

        Subscriber.create!(external_id: params[:phone_number], source: "WhatsApp")
        WhatsappWorker.perform_async(params[:phone_number], "Hi! #{params[:name]}. Welcome to 4Play. We're launching in #{hours_to_launch} bringing you the freshest news to get you up! #{Subscriber.count} people already up.")
      # else
        # WhatsappWorker.perform_async(params[:phone_number], "We will be sending you the most interesting BBC articles in a bit.")
      end
      render json: { success: true }
    end

    # POST /subscription/wechat
    def wechat_subscribers
      # WeChat messages

      raw_xml = request.body.read
      logger.info "WeChat XML: #{raw_xml}"
      
      notification = Wechat::Notification.new(raw_xml)
      if notification.is_message?
        text = notification.content
        from = notification.from

        if is_opt_in?(text) && new_subscriber?("WeChat", from)
          Subscriber.create!(external_id: from, source: "WeChat")
          WechatWorker.perform_async("send", from, "Hi! Welcome to 4Play. We launching in #{hours_to_launch} bringing you the freshest news to get you up! #{Subscriber.count} people already up.")
        end
      end

      render xml: "<xml></xml>"
    end

    # GET /subscription/wechat
    def wechat_api_registration
      if params.has_key?(:echostr)
        render text: params[:echostr]
      else
        render json: { error: true }
      end
    end

    private


    def hours_to_launch
      launch_time = DateTime.parse("2015-02-04 13:00:00 UTC")
      distance_of_time_in_words(launch_time, Time.now, include_seconds: true)
    end

    def is_opt_in?(text)
      text.downcase == Rails.application.secrets.subscribe_keyword.downcase
    end

    def new_subscriber?(source, id)
      Subscriber.find_by(external_id: id, source: source).nil?
    end
  end
end