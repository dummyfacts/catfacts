require 'sms_candy'

class SmsController < ApplicationController

  def create
    SmsCandy::Authentication::Strategies.add :oauth2
    access_token = SmsCandy::Manager.authenticate

    directory_id = Directory.all.map(&:id).sample
    fact_id = Fact.all.map(&:id).sample

    SmsCandy::Manager.send_sms(Directory.find(directory_id).number, Fact.find(fact_id).description, access_token)

    head :no_content
  end

end
