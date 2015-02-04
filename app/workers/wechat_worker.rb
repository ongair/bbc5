require 'wechat'
class WechatWorker
  include Sidekiq::Worker

  sidekiq_options :queue => :wechat, :retry => false

  def perform(method, contact_id, message)
    token = Token.where(source: "WeChat").last
    access_token = token.value

    logger.info "About to send the #{contact_id} the message: #{message}"

    client = Wechat::Client.new(Rails.application.secrets.wechat_app_id,Rails.application.secrets.wechat_app_secret, access_token)
    if method == "send"
      client.send_message contact_id, message 
    end
  end
end