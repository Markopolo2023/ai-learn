PACKAGE_NAME=ai

.PHONY: install
install:
	pip install -r .\requirements.txt
	pip install -e .
	pre-commit install


format:
	isort $(PACKAGE_NAME)
	black $(PACKAGE_NAME)

lint:
	flake8 $(PACKAGE_NAME)
	pylint $(PACKAGE_NAME) --disable=missing-function-docstring

pre-commit:
	pre-commit run
