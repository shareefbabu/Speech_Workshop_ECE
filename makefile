#!/usr/bin/env bash

venv:. venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	. venv/bin/activate; pip3 install -Ur requirements.txt
	touch venv/bin/activate

test: venv
	. venv/bin/activate;nosetests project/test

