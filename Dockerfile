FROM continuumio/miniconda3:latest

RUN conda update conda -y && \
    conda install -y scipy pandas jupyterlab requests && \
    conda clean -all -y

WORKDIR /opt/notebooks

CMD ["/opt/conda/bin/jupyter", "lab", "--notebook-dir=/opt/notebooks" ,"--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]