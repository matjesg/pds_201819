FROM tensorflow/tensorflow:latest-py3

# Install ML-Packages
RUN pip --no-cache-dir install \
  xgboost \
  catboost \
  lightgbm \
  gensim \
  seaborn \
  jupyter_contrib_nbextensions \
  jupyter_nbextensions_configurator

# Install Featuretools
python -m pip install featuretools

# Add Jupyter Extensions
RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user