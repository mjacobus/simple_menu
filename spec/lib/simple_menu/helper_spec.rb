require "spec_helper"

describe SimpleMenu::Helper, '#initialize' do
  context "with params" do
    subject do
      SimpleMenu::Helper.new({
        :first => ["Label 1", "#url", {}],
        :second => ["Label 2", "#url2", {}]
      })
    end
    
    its(:items) do
      should eq({
        :first => ["Label 1", "#url", {}],
        :second => ["Label 2", "#url2", {}]
      })
    end
  end
end

describe SimpleMenu::Helper, '#add' do
  context "with params" do
    subject do
      SimpleMenu::Helper.new.add({
        :first => ["Label 1", "#url", {}],
        :second => ["Label 2", "#url2"]
      }).add(:third, "Label 3", "#url3")
    end
    
    its(:items) do
      should eq({
        :first => ["Label 1", "#url", {}],
        :second => ["Label 2", "#url2", nil],
        :third => ["Label 3", "#url3", {}]
      })
    end
  end
end

describe SimpleMenu::Helper, '#to_s' do
  context "with params" do
    subject do
      menu = SimpleMenu::Helper.new.add({
        :first => ["Label 1", "#url", {}],
        :second => ["Label 2", "#url2"],
        :third =>["Label 3", "#url3"]
      })
      
      menu.active=(:second)
      menu
    end
    
    it "should render menu" do
      html = [
      '<ul>',
        '<li><a href="#url">Label 1</a></li>',
        '<li class="active"><a href="#url2">Label 2</a></li>',
        '<li><a href="#url3">Label 3</a></li>',
      '</ul>',
      ].join('')
      subject.to_s.should eq(html)
    end
  end
end
