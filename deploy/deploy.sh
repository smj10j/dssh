#!/bin/bash
set -e

git pull -r

echo -n "Loading version and tag..."
VERSION=$(cat ./version)
TAG=$(echo $(( $VERSION/100 )).$(( $VERSION/10 )).$(( $VERSION - (($VERSION/10)*10) )))
LAST_TAG=$(echo $(( ($VERSION-1)/100 )).$(( ($VERSION-1)/10 )).$(( ($VERSION-1) - ((($VERSION-1)/10)*10) )))
echo " version=$VERSION, tag=$TAG"

echo "Replacing $LAST_TAG with $TAG in gemspec..."
sed -i "s/$LAST_TAG/$TAG/" dssh.gemspec
echo "Bumping version number..."
echo $(( $VERSION + 1 )) > ./version
git commit -a -m "Release $TAG"
git push

echo "Adding tag $TAG to HEAD..."
git tag $TAG

echo -n "Press any key to push to Github (ctrl-c to abort)..."
read -n 1

echo "Pushing with command 'git push --tags'..."
git push --tags



echo "Done!"
