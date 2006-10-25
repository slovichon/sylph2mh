#!/bin/sh

here=$PWD/$(dirname $0)
sylseq=$here/sylseq.pl
sylcache=$here/sylcache.pl
sylmail=~/.sylpheed

echo find $sylmail -name .sylpheed_marks -execdir perl $sylseq \;
echo find $sylmail -name .sylpheed_cache -execdir perl $sylcache \;
