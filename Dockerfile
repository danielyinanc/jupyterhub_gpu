# Ref https://docs.rapids.ai/install
FROM tensorflow/tensorflow:2.14.0-gpu-jupyter

# Install pytorch
ADD requirements.txt /
RUN pip install --requirement /requirements.txt

# Create notebook dir
RUN mkdir /notebooks

CMD jupyter lab --ip='*' --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --notebook-dir=/notebooks