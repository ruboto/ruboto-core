require 'ruboto/widget'

ruboto_import_widgets :Button, :LinearLayout, :TextView

class RubotoCoreActivity
  import org.ruboto.core.R
  def onCreate(bundle)
    super
    set_title R.string.app_title
    installerPackageName = getIntent().getStringExtra(
                Intent.EXTRA_INSTALLER_PACKAGE_NAME)

    self.content_view =
        linear_layout :orientation => :vertical, :background_color => 0xFFB90706 do
          text_view :text => getString(R.string.title), :width => :match_parent, :id => 42,
                    :gravity => :center, :text_size => 48.0, :background_color => 0xFF24456A
          text_view(:text => installerPackageName,
                    :width => :match_parent, :gravity => :center, :text_size => 24.0) if installerPackageName
          text_view(:text => package_manager.getInstallerPackageName($package_name),
                    :width => :match_parent, :gravity => :center, :text_size => 24.0) if package_manager.getInstallerPackageName($package_name)
          text_view :text => getString(R.string.content).gsub(/\n+/, '  '),
                    :width => :match_parent, :gravity => :center, :text_size => 24.0
          button :text => getString(R.string.homepage), :width => :match_parent, :on_click_listener => proc { go_home }
          button :text => getString(R.string.exit), :width => :match_parent, :on_click_listener => proc { finish }
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
