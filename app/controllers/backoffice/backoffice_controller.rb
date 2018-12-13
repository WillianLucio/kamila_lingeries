module Backoffice
  class BackofficeController < ApplicationController
    before_action :authenticate_user!
    layout 'backoffice'
  end
end
