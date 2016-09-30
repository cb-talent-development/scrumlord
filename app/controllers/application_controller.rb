class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :add_gon

  private

  def add_gon
    gon.push({
               flash: {
                 notice: notice,
                 alert: alert
               }
             })
  end
end
