FROM tensorflow/tensorflow:latest-py3

RUN pip --no-cache-dir install \
  xgboost \
  catboost \
  lightgbm \
  gensim
