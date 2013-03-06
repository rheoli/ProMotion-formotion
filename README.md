# ProMotion-formotion

ProMotion Formotion Screen

Made a gem from the ProMotion formotion example at https://github.com/clearsightstudio/ProMotion#using-your-own-uiviewcontroller

## Setup

Add this gem to your project, in Gemfile `gem 'ProMotion-formotion'`,
then `bundle update`

Create a Formotion Screen with:
```ruby
class MyFormotionScreen < ProMotion::Formotion::FormotionScreen
	title "Formotion Example"
  
  def on_submit(_form)
    # Submit pressed
    if Data.saved?
      close(saved: true)
    end
  end
  
  def form_data
    {
      sections: [{
        title: "Test",
        rows: [{
          title: "Name",
          key: :name,
          placeholder: "tag name",
          type: :string,
          auto_correction: :no,
          auto_capitalization: :none
        },
        {
          title: "Photo",
          key: :photo,
          placeholder: "photo name",
          type: :image,
          auto_correction: :no,
          auto_capitalization: :none
        },
      ],
      }]
    }
  end

end
``` 
