DOWNLOADS_DIR = '../ruboto.github.com/downloads'

task :release => DOWNLOADS_DIR do
  FileUtils.cp 'bin/RubotoCore-release.apk', "#{DOWNLOADS_DIR}/RubotoCore-release.apk"
  FileUtils.cp 'bin/RubotoCore-release.apk', "#{DOWNLOADS_DIR}/RubotoCore-release-#{version}.apk"
  Dir.chdir DOWNLOADS_DIR do
    sh "git add RubotoCore-release.apk RubotoCore-release-#{version}.apk"
    sh "git commit -m '* Added new RubotoCore release #{version} to downloads.'"
    sh 'git push'
  end
end
