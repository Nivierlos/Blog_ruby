class Admin::ApplicationController < ActionController::Base
    protect_from_forgery wth: :exception
    layout 'admin/application'
end
