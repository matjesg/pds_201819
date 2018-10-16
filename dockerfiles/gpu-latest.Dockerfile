FROM tensorflow/tensorflow:latest-gpu-py3

# Add Pandoc and Tex
RUN apt-get update && apt-get install -y \
  pandoc \
  texlive-xetex

# Install ML-Packages
RUN pip --no-cache-dir install \
  xgboost \
  catboost \
  lightgbm \
  gensim \
  jupyter_contrib_nbextensions \
  jupyter_nbextensions_configurator

# Add Jupyter Extensions
RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user