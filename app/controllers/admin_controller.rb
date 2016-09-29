class AdminController < ActionController::Base
  before_action :authenticate_team!

  def index
  end
end
