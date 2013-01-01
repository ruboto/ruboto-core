task :release do
  FileUtils.cp 'bin/RubotoCore-release.apk', 'dist/RubotoCore-release.apk'
  sh "git add dist/RubotoCore-release.apk"
  sh "git commit -m '* Added new release to dist directory.'"
  sh "git push"
end
