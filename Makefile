SHELL=/bin/bash
CONDAROOT=~/opt/miniconda3

install jupyter-lab: 
	source $(CONDAROOT)/bin/activate && conda env create -p conda -f ./my-jupyter-lab/jupyter-lab.yml && source deactivate
