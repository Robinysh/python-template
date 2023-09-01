install:
	git config core.hooksPath .githooks
	- git submodule update --init --recursive --remote --force
	pdm sync

reset:
	git fetch
	git remote prune origin
	git checkout main -f
	git reset --hard origin/main
	git checkout dev -f
	git reset --hard origin/dev
	$(MAKE) install
