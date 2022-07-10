# frozen_string_literal: true

module SessionsHelper
  def flash_auth_warning
    content_tag :p, flash[:alert], class: 'flash alert' if flash[:alert]
  end
end