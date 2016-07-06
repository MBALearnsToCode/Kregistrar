#!/bin/bash


# NOTE: this script requires Anaconda Python


# install package locally
sudo pip install -e .
# or:
# python setup.py develop


# install / update Twine & Wheel packages
pip install --upgrade Twine
conda install Wheel
conda update wheel


# register package on PyPI
python setup.py sdist bdist_wheel --universal
python setup.py register
twine upload dist/*
# or:
# python setup.py sdist bdist_wheel upload
