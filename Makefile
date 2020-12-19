build:
	hugo --cleanDestinationDir --minify
	git reset -- docs/CNAME
	git checkout -- docs/CNAME
