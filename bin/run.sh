#!/bin/bash

ROOTDIR="$(dirname $( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"
VERSION=`sed -ne 's/\s*<version>\(.*\)<\/version>/\1/p' $ROOTDIR/pom.xml | head -1`
BASE="$ROOTDIR/target/legislation-$VERSION/WEB-INF"

case $1 in
    ingest) SCRIPT=gov.nysenate.openleg.scripts.Ingest; shift;;
    collate) SCRIPT=gov.nysenate.openleg.scripts.Collate; shift;;
    push) SCRIPT=gov.nysenate.openleg.scripts.Push; shift;;
    --help | -h | help) echo "USAGE: `basename $0` ingest|help <args>"; exit;;
esac

java -Xmx756m -Xms16m -cp $BASE/classes/:$BASE/lib/* $SCRIPT $@
