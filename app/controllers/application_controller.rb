class ApplicationController < ActionController::Base
  before_action :require_login, except: [:destroy]
  protected

  def not_authenticated
  end
end
