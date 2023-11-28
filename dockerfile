FROM python


WORKDIR /usr/app


COPY requirements.txt .


RUN pip install -r requirements.txt


COPY . .


EXPOSE 5000


ENV PYTHON_APP=app.py


CMD ["python", "app.py"]