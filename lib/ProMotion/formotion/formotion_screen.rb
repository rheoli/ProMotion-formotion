module ProMotion
  module Formotion
  
class FormotionScreen < ::Formotion::FormController # Can also be < UIViewController
  include ::ProMotion::ScreenModule # Not TableScreenModule since we're using Formotion for that

  # Required functions for ProMotion to work properly

  def form_data
    {}
  end

  def self.new(args = {})
    s = self.alloc
    s.on_create(args) if s.respond_to?(:on_create)
    @local_form=::Formotion::Form.new(s.form_data)
    if s.respond_to?(:on_submit)
      @local_form.on_submit do |form|
        s.on_submit(form.render)
      end
    end
    s.initWithForm(@local_form)
    s.update_table_data if s.respond_to?(:update_table_data)
    s
  end

  def viewDidLoad
    super
    self.view_did_load if self.respond_to?(:view_did_load)
  end

  def viewWillAppear(animated)
    super
    self.view_will_appear(animated) if self.respond_to?("view_will_appear:")
  end

  def viewDidAppear(animated)
    super
    self.view_did_appear(animated) if self.respond_to?("view_did_appear:")
  end

  def viewWillDisappear(animated)
    self.view_will_disappear(animated) if self.respond_to?("view_will_disappear:")
    super
  end

  def viewDidDisappear(animated)
    self.view_did_disappear(animated) if self.respond_to?("view_did_disappear:")
    super      
  end

  def shouldAutorotateToInterfaceOrientation(orientation)
    self.should_rotate(orientation)
  end

  def shouldAutorotate
    self.should_autorotate
  end

  def willRotateToInterfaceOrientation(orientation, duration:duration)
    self.will_rotate(orientation, duration)
  end

  def didRotateFromInterfaceOrientation(orientation)
    self.on_rotate
  end
end

end
end
