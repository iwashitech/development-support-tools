BARDIR=foo/bar/
BAZDIR=foo/baz/

if [ ! -d $BARDIR ]; then
  mkdir -p $BARDIR
fi
if [ ! -d $BAZDIR ]; then
  mkdir -p $BAZDIR
fi

rsync -av ~/example.com/${BARDIR} ./${BARDIR}
rsync -av ~/example.com/${BAZDIR} ./${BAZDIR}