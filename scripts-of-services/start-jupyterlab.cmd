# run jupyterlab as it has been installed.
#   installed: jupyter, jupyterlab
#   to exit jupyter, press `ctrl-c` in the running console

# Author: aaronlaw
# Last update: 2020-03-10

SET venv_dir=~/venv
SET jupyter_dir=D:/Syncthing/Jupyter

REM # install jupyterlab
REM pip3 install jupyterlab
cd %jupyter_dir%
python -m jupyterlab