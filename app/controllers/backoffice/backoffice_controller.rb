module Backoffice
  class BackofficeController < ApplicationController
    before_action :authenticate_user!
  end
end
