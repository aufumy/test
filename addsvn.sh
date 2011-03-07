#!/bin/sh
fromdir='/var/www/bcrea/svn/bcrea/trunk'
todir='/var/www/bcrea/bcrea.tmp'

cd $fromdir
find . -name '.svn' -print | \
while read i
do
  echo $i
  subdir=`dirname $i`
  cp -pr $i $todir/$subdir
done
