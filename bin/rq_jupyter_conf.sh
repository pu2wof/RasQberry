#!/bin/bash
#
echo; echo; echo "configure jupyter notebooks"
#source ~/rasqberry/bin/activate
pip3 install --prefer-binary jupyter
/home/pi/.local/bin/jupyter notebook --generate-config
JUPYTER_PW=`(echo "from notebook.auth import passwd"; echo "print(passwd('RasQberry'))") | python3`; echo $JUPYTER_PW
JUPYTER_PW=$(echo ${JUPYTER_PW} | sed -e "s#/#\\\/#g")
sed -i "s/# c.NotebookApp.password = ''/c.NotebookApp.password = '$JUPYTER_PW'/" ~/.jupyter/jupyter_notebook_config.py
sed -i "s/# c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '*'/" ~/.jupyter/jupyter_notebook_config.py
