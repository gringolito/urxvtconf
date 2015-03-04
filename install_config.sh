#!/bin/sh
CURDIR=`pwd`

# create backups, for blind sighted users that doesnt even look what
# scripts does
if [ -f ~/.Xresources ]; then
	mv -f ~/.Xresources ~/.Xresources.bk
fi

# create simlinks for the current dir, so our configuration is updated
# if its modified in the git repository
ln -sf ${CURDIR}/Xresources ~/.Xresources

# update X resources database to apply changes
xrdb ~/.Xresources
