# Check if git remote named "gitlab_remote" already exists
if ! git config --get remote.gitlab_remote.url > /dev/null 2>&1; then
 # If it doesn't exist, add it
 git remote add gitlab_origin git@gitlab.com:B.T.BConnectingLoansInIsraelLTD/devops/secrets.git
 echo "Added remote named 'gitlab_remote'"
else
 # If it already exists, inform the user
 echo "Remote named 'gitlab_remote' already exists"
fi
