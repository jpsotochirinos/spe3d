FROM tensorflow/tensorflow:2.6.0

RUN sudo apt-get update -y

RUN sudo apt-get install -y wget git python python-dev && rm -rf /var/lib/apt/lists/*

RUN sudo apt-get install bzip2 libxml2-dev

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

RUN bash Miniconda3-latest-Linux-x86_64.sh -b

RUN rm Miniconda3-latest-Linux-x86_64.sh

RUN source .bashrc

RUN sudo apt install libgl1-mesa-glx -y

RUN sudo apt-get install subversion

RUN git clone 

RUN conda create --name jaxnerf python=3.7; conda activate jaxnerf

RUN conda install pip; pip install --upgrade pip

RUN pip install -r jaxnerf/requirements.txt

RUN pip install "jax[tpu]>=0.2.16" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html

ENV MODELS_BUCKET='gs://nerf-bucket/models'

ENV CHECKPOINT_BUCKET='gs://nerf-bucket/chekpoint'

