up:
	hugo server -D

upload: build
	git add .
	git commit -m "update"
	git push origin master

build:
	hugo --cleanDestinationDir --minify
	git reset -- docs/CNAME
	git checkout -- docs/CNAME
