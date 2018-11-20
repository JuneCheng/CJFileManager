#!/bin/bash

VersionString=`grep -E 's.version.*=' CJFileManager.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' CJFileManager.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" CJFileManager.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod repo push JCPrivatePods CJFileManager.podspec --verbose --allow-warnings --use-libraries
#pod repo push JCPrivatePods CJFileManager.podspec --verbose --allow-warnings --use-libraries --use-modular-headers

