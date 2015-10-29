#!/bin/sh

WHERE=$(cd $(dirname $0) && pwd)

PYTHON=$(which python3)

if [ $? -ne 0 ]; then
    PYTHON=$(which python2)
fi

if ! [ -d ${WHERE}/venv ] ; then
    echo Creating virtualenv with ${PYTHON}
    virtualenv -p ${PYTHON} ${WHERE}/venv
fi

. ${WHERE}/venv/bin/activate

if ! [ -x ${WHERE}/venv/bin/jupyter ]; then
    pip install --upgrade pip
    pip install pandas jupyter matplotlib httplib2 google-api-python-client
fi

${WHERE}/venv/bin/jupyter notebook ${WHERE}/Analyzing\ observation\ data\ with\ Google\ BigQuery.ipynb
