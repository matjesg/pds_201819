FROM tensorflow/tensorflow:latest-gpu-py3

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