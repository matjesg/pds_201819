FROM tensorflow/tensorflow:latest-py3

# Add Pandoc
RUN apt-get update && apt-get install -y \
  pandoc

# Install ML-Packages
RUN pip --no-cache-dir install \
  xgboost \
  catboost \
  lightgbm \
  gensim

# Add Jupyter Extensions
RUN pip --no-cache-dir install \
  jupyter_contrib_nbextensions \
  jupyter_nbextensions_configurator

RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user