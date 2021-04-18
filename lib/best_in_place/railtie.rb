require 'rails/railtie'
require 'action_view/base'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    config.after_initialize do
      context = ActionView::LookupContext.new(ActionController::Base.view_paths)
      BestInPlace::ViewHelpers = ActionView::Base.new(context, {}, '')
    end
  end
end
