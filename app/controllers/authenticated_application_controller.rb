class AuthenticatedApplicationController < ApplicationController
  before_action :authenticate_team!
end