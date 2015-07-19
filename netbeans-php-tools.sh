#!/bin/bash

VERSION=`cat package.json | grep '"version":' | awk -F '"' '{ print $4 }'`
PACKAGE=`cat package.json | grep '"name":' | awk -F '"' '{ print $4 }'`
if [ -e "build" ]; then
  BUILD=`cat  build | perl -ne 'chomp; print join(".", splice(@{[split/\./,$_]}, 0, -1), map {++$_} pop @{[split/\./,$_]}), "\n";'`
else
  BUILD="1";
fi
echo $BUILD > build

#CHANGES=`cat CHANGELOG.md | awk -vRS="##" 'NR<=2' ORS="##" | grep -v "##"`
#dch -v $VERSION-1 --package libjs-twitter-bootstrap $CHANGES
dch -v $VERSION-$BUILD --package $PACKAGE "Debianized $VERSION"

debuild -i -us -uc -b

cd ..
#~/bin/publish-deb-packages.sh
