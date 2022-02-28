FROM kayceesrk/cs3100_iitm:latest

RUN pip3 install --no-cache-dir notebook
RUN pip3 install pyswip-notebook

ARG NB_USER=jovyan
ARG NB_UID=1234
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
RUN sudo chown -R ${NB_UID} ${HOME}