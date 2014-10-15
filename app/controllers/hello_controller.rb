class HelloController < ApplicationController
  def index
    Rails.logger.info('neko')
  end
end
