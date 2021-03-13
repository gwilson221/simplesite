FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY manage.py /code/
COPY counter /code/counter
COPY proj /code/proj
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


