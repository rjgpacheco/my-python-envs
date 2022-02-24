#!/usr/bin/env bash
cd "${0%/*}"

source ~/opt/miniconda3/bin/activate

if [ -d "$CONDA_PREFIX/envs/jupyterlab" ] 
then
    echo "Updating environment."
    echo ""
    conda env update --name jupyterlab --file jupyter-lab.yml
else
    echo "Creating environment"
    echo ""
    conda env create -f jupyter-lab.yml
fi

# Need to run manually. For now.
jupyter nbextension enable --py widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager

# https://github.com/ryantam626/jupyterlab_code_formatter/pull/186

jupyter server extension enable jupyterlab_code_formatter
# if you installed the plugin with pip and using --user, you need to add it here as well
jupyter server extension enable --user jupyterlab_code_formatter

# Install additional extensions
# source $CONDA_PREFIX/bin/activate jupyterlab



# jupyter contrib nbextension install --user
# jupyter labextension install @jupyter-widgets/jupyterlab-manager

# source conda deactivate