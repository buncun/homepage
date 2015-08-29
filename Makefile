BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/dist

github_deploy:
	ghp-import -n $(INPUTDIR)
	@git config --global http.postBuffer 524288000
	@git push -fq https://${GH_TOKEN}@github.com/$(TRAVIS_REPO_SLUG).git gh-pages > /dev/null
