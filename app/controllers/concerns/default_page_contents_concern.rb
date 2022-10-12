module DefaultPageContentsConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Portfolio | Home"
    @seo_keywords = "Aadils Portfolio"
  end
end