FROM python:3
ENV PYTHONDOWNWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY . /code
WORKDIR /code
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
# RUN pip3 install --no-index --find-links /artefacts/lib/ -r requirements.txt
RUN pip list
WORKDIR /code/django
#CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["python3", "manage.py", "runsslserver", "0.0.0.0:8000", "--nostatic"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
