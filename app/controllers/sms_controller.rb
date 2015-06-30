require 'sms_candy'

class SmsController < ApplicationController

  def create
    SmsCandy::Authentication::Strategies.add :oauth2
    access_token = SmsCandy::Manager.authenticate

    SmsCandy::Manager.send_sms("0400000000", "Cat Fact 1: Every year, nearly four million cats are eaten in Asia", access_token)

    head :no_content
  end

end
