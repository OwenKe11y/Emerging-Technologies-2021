# syntax=docker/dockerfile:1
FROM jupyter/scipy-notebook
WORKDIR /home/jovyan/Documents/College/Fourth Year
USER root
RUN apt-get update && apt -y upgrade && apt -y install git
USER jovyan
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888