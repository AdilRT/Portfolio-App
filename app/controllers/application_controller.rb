class ApplicationController < ActionController::Base  
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContentsConcern

  # before_action :set_copyright
  #
  # def set_copyright
  #   @copyright = AadilViewTool::Renderer.cppyright 'Aadil RT', 'All rights reserved.'
  # end
end

# module AadilViewTool
#   class Renderer
#     def self.cppyright name, msg
#       "<div>&copy; #{Time.now.year} | <b>#{name}</b> #{msg}</div>".html_safe
#     end
#   end
# end
