require 'ruboto/widget'

ruboto_import_widgets :Button, :LinearLayout, :TextView

class RubotoCoreActivity
  def on_create(bundle)
    super
    set_title 'Ruboto - Ruby on Android'

    self.content_view =
        linear_layout :orientation => :vertical, :background_color => 0x7FB90706 do
          text_view :text => 'Welcome to Ruboto', :width => :match_parent,
                    :gravity => :center, :text_size => 48.0, :background_color => 0x7F24456A
          text_view :text => 'This app contains the common parts of Ruboto apps.
You have probably come here after installing a Ruboto based app.
You do not have to run this app to use Ruboto.  It will automatically be
utilized by Ruboto apps that do not already include JRuby.  To continue,
just select "Exit" and navigate to the app you installed.  It will start normally
from now on.
'.gsub(/\n+/, '  '),
                    :width => :match_parent, :gravity => :center, :text_size => 24.0
          button :text => 'Ruboto Home Page', :width => :match_parent, :on_click_listener => proc { go_home }
          button :text => 'Exit', :width => :match_parent, :on_click_listener => proc { finish }
        end
  rescue
    puts "Exception creating activity: #{$!}"
    puts $!.backtrace.join("\n")
  end

  private

  def go_home
    startActivity android.content.Intent.new android.content.Intent::ACTION_VIEW,
                                             android.net.Uri.parse('http://ruboto.org/')
  end

end
