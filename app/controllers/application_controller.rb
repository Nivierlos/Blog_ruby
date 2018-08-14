class ApplicationController < ActionController::Base
    protect_from_forgery wth: :exception
end
