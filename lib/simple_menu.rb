require "simple_menu/helper"

module SimpleMenu
  def simple_menu(name = :default)
    name = name.to_sym
    @simple_menus ||= {}
    @simple_menus[name] ||= SimpleMenu::Helper.new
  end
end

#ActionView::Base.send :include, SimpleMenu
ActionController::Base.send(:include,SimpleMenu)