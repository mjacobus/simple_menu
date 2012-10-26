class SimpleMenu::Helper
  
  # can be initialized with the items passed through params
  def initialize(params = {})
    clear
    params.each do |key, options|
      add(key, options[0], options[1], options[2])
    end
  end
  
  def clear
    @items = ActiveSupport::OrderedHash.new
    self
  end
  
  def add(key, label = nil, url = nil, params = {})
    if key.kind_of? Hash
      key.each do |key, options|
        add(key, options[0], options[1], options[2])
      end
    else
      key = key.to_sym
      if items.has_key? key
        raise("key #{key} has already been taken")
      end
      
      items[key] = [label, url, params]  
    end
    
    self
  end
  
  def items
    @items
  end
  
  def active=(key)
    if key
      @active = key.to_sym
    else
      @active = nil
    end
    
    self
  end
  
  def active
    @active
  end
  
  def to_s
    html = []
    
    items.each do |key, options|
      if key == active
        html << '<li class="active">'
      else
        html << '<li>'
      end
      
      html << "<a href=\"#{options[1]}\">#{options[0]}</a>"
      html << '</li>'
    end
    
    if html.length > 0
      "<ul>#{html.join('')}</ul>"
    else
      ""
    end
  end
end
