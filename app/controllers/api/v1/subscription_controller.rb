module Api::V1
  class SubscriptionController < ApplicationController
    def version
      render json: { version: "1.0" }
    end  
  end
end