FROM jupyter/scipy-notebook


####### Jupyter

# Expose the JupyterLab port
EXPOSE 8080

# no password for our notebooks
ENV pwd=""

# allow access to jupyterlab
ENTRYPOINT exec jupyter-lab --no-browser --ip=0.0.0.0 --port=8080  --allow-root --NotebookApp.token="$pwd" --NotebookApp.password="$pwd" --ServerApp.allow_origin="*"



# set the working directory
WORKDIR /home

# copy our code to the image
COPY createPlot.py .

# install the packages we need
RUN pip install pandas seaborn