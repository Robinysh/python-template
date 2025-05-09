install:
	- git submodule update --init --recursive --remote --force
	uv sync --no-dev

install-dev:
	- git submodule update --init --recursive --remote --force
	uv sync
	uv run pre-commit install

reset:
	git fetch
	git remote prune origin
	git checkout main -f
	git reset --hard origin/main
	git checkout dev -f
	git reset --hard origin/dev
	$(MAKE) install
