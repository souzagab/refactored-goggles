# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authorize

  private

  def authorize
    return if request.headers["Authorization"].include? ENV.fetch "API_SECRET" # super secure

    head :unauthorized
  end
end
