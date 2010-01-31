class PageCacheExpirer <  ActionController::Base
  include ActionController::UrlWriter
  def self.expire
    expire_page '/index.html'
    expire_page '/projects.js' # required to work with periodically_call_remote
  end
end
