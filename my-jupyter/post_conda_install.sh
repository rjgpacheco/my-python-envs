#!/usr/bin/env bash
# https://github.com/QuantStack/ipysheet

set -x

# conda activate jupyter

# https://github.com/ryantam626/jupyterlab_code_formatter/pull/186


# Need to run manually. For now.
jupyter nbextension enable --py widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter server extension enable jupyterlab_code_formatter
jupyter server extension enable --user jupyterlab_code_formatter

# Themes
jupyter labextension install @arbennett/base16-nord
jupyter labextension install @arbennett/base16-one-dark
jupyter labextension install @arbennett/base16-mexico-light
jupyter labextension install @arbennett/base16-summerfruit-light

# To make use of lantern
# jupyter labextension install @jupyter-widgets/jupyterlab-manager
# jupyter labextension install plotlywidget
# jupyter labextension install @jupyterlab/plotly-extension
# jupyter labextension install jupyterlab_bokeh
# jupyter labextension install qgrid
# jupyter labextension install @jpmorganchase/perspective-jupyterlab
# jupyter labextension install ipysheet
# jupyter labextension install lineup_widget


# There's a bug in Black that makes not create this folder early enough.
# Affects the notebook code formatter.
mkdir /Users/ricardo/Library/Caches/black/20.8b1/

# jupyter labextension install @jupyter-widgets/jupyterlab-manager
# jupyter labextension install ipysheet

# Check if everything is OK.
jupyter labextension list
jupyter serverextension list