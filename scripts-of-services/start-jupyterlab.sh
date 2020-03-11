# run jupyterlab as it has been installed.
#   installed: jupyter, jupyterlab
#   to exit jupyter, press `ctrl-c` in the running console

# Author: aaronlaw
# Last update: 2019-11-21

venv_dir=~/venv
jupyter_dir=~/Syncthing/Jupyter

# Prepare virtual environment
cd $venv_dir
source jupyter_venv/bin/activate

pip show jupyter
echo '----'
pip show jupyterlab

# Change to the directory of jupyter and run the JupyterLab
cd $jupyter_dir
# jupyter notebook
jupyter lab

