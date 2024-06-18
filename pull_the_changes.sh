echo "Wait Fetching  from Origin ....."

git fetch origin main

echo "Fetching Done from Origin ....."


echo "Merging is Started from Origin ....."

git merge FETCH_HEAD

echo "Successfully merged the latest updates from master"

