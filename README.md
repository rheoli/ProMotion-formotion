# ProMotion-formotion

ProMotion Formotion Screen

Made a gem from the ProMotion formotion example at https://github.com/clearsightstudio/ProMotion#using-your-own-uiviewcontroller

Now with 100% more motion_require


## Setup

Add this gem to your project, in Gemfile `gem 'ProMotion-formotion'`,
then `bundle update`

Create a Formotion Screen with:
```ruby
class LoginScreen < PM::FormotionScreen

  title "Login"

  def on_submit(_form)
   
  end

  def table_data
    {
      sections: [{
        title: "Credentials",
        rows: [{
          title: "Email",
          key: :email,
          placeholder: "example@kohactive.com",
          type: :string,
          auto_correction: :no,
          auto_capitalization: :none
        },
        {
          title: "Password",
          key: :password,
          placeholder: "",
          type: :string,
          auto_correction: :no,
          auto_capitalization: :none
        },
      ]
      }]
    }
  end



end
``` 
