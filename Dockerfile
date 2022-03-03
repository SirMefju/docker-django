# image from python
FROM python:3

# When you run a single python process in the container, 
# which does not spawn other python processes itself during its lifetime, then there is no "risk" in doing that.
# Storing byte code on disk is used to compile python into byte code just upon the first invocation of 
# a program and its dependent libraries to save that step upon the following invocations.
# In a container the process runs just once, therefore setting this option makes sense.
ENV PYTHONDOWNWRITEBYTECODE=1

# Setting PYTHONUNBUFFERED to a non empty value ensures that the python output is sent straight to terminal (e.g. your container log) 
# without being first buffered and that you can see the output of your application (e.g. django logs) in real time.
ENV PYTHONUNBUFFERED=1

# copy all content from project to new folder 'code'
COPY . /code

# change working directory to /code, we started from root
WORKDIR /code

# upgrade pip tool
RUN pip install --upgrade pip

# install libraries which are in the requirements file
RUN pip3 install -r requirements.txt

# thats install alternative to use libraries without internet
# RUN pip3 install --no-index --find-links /artefacts/lib/ -r requirements.txt

# list of installed libraries
RUN pip list

# change working directory to /code/django
WORKDIR /code/django

# run server
#CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["python3", "manage.py", "runsslserver", "0.0.0.0:8000", "--nostatic"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
