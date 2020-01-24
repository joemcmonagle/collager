FROM python:3.6-buster
#RUN mkdir /code

VOLUME /data

WORKDIR /usr/src/app
#COPY main.py /code/main.py
#COPY featurize.py /code/featurize.py
#COPY requirements.txt requirements.txt
#COPY . .
#RUN mkdir /data
#COPY ./data/ /data/
#RUN pip install --no-cache-dir -r requirements.txt
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
#RUN pip install jupyter==1.0.0
#RUN pip install numpy
#RUN pip install pandas==0.25.2
#RUN pip install pillow==4.2.1
#RUN pip install pip==19.3.1
#RUN pip install tqdm==4.36.1

COPY . .

#VOLUME /data

#ENTRYPOINT [ "python", "/usr/src/app/main.py", "featurize", "/data/imagenet_validation", "/data/features.pickle" ]
#CMD "--processes 4"
#CMD [ "python", "./main.py", "featurize", "/data/imagenet_validation", "/data/features.pickle" ]
CMD [ "python", "./main.py" ]
#CMD "python /usr/src/app/main.py featurize /data/imagenet_validation /data/features.pickle --processes 4"
