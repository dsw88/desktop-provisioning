$originalLocation = $pwd

cd C:/Projects

foreach($file in Get-ChildItem) {
  "Entering directory $file"
  cd $file
  git status
  "Leaving directory $file"
  echo ""
  cd ..
}

cd $originalLocation