FROM tensorflow/tensorflow:latest-gpu-py3

RUN pip --no-cache-dir install \
  xgboost \
  catboost \
  lightgbm \
  gensim
