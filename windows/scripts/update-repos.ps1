$originalLocation = pwd

cd C:/Projects

foreach($file in Get-ChildItem) {
  echo "######################################################################"
  echo "Entering directory $file"
  echo "######################################################################"
  cd $file

  # Check for repository
  git status
  if ($? -eq $true) {
    echo "Pulling from Git repository"
    git pull
  }
  else {
    echo "The directory is not a Git repository"
  }
  echo "Leaving directory $file" 
  echo ""
  echo ""
  cd ..
}

cd $originalLocation