task :release do
  FileUtils.cp 'bin/RubotoCore-release.apk', 'dist/RubotoCore-release.apk'
  FileUtils.cp 'bin/RubotoCore-release.apk', "dist/RubotoCore-release-#{version}.apk"
  sh "git add dist/RubotoCore-release.apk dist/RubotoCore-release-#{version}.apk"
  sh "git commit -m '* Added new release #{version} to dist directory.'"
  sh "git push"
end
