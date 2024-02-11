PACKAGE_NAME=ai

.PHONY: install
install:
	pip install -r .\requirements.txt
	pip install -e .
	pre-commit install
