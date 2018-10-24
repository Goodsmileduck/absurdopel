FROM python:3.6.5

ENV DIR /app

WORKDIR ${DIR}
COPY requirements.txt ${DIR}/requirements.txt
RUN pip install -r ${DIR}/requirements.txt

EXPOSE 5000


COPY . /app
CMD ["python", "ioapp.py"]