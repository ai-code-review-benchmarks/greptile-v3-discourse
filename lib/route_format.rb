# frozen_string_literal: true

module RouteFormat
  def self.username
    /[%\w.\-#{SiteSetting.allowed_unicode_username_characters}]+?/
  end

  def self.backup
    /.+\.(sql\.gz|tar\.gz|tgz)/i
  end
end
