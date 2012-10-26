require "simple_menu/helper"

module SimpleMenu
  def simple_menu(name = :default)
    name = name.to_sym
    @simple_menus ||= {}
    @simple_menus[name] ||= SimpleMenu::Helper.new
  end
end

#ActionView::Base.send :include, SimpleMenu
Dispatcher.to_prepare do
  ApplicationController.send(:include, SimpleMenu) unless ApplicationController.include?(SimpleMenu)
end