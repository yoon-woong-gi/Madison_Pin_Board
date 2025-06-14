FROM python:3.9.0

WORKDIR /home/

RUN echo "echo!"

RUN echo "test"

RUN git clone https://github.com/yoon-woong-gi/Madison_Pin_Board.git

WORKDIR /home/Madison_Pin_Board/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

RUN echo "SECRET_KEY=django-insecure-1^5r-wn&ffhit&e@cjbwgt#3z71b3fvtrlw#g9%h07a4$%hmet" > .env

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate --settings=pragment.settings.deploy && gunicorn pragment.wsgi --env DJANGO_SETTINGS_MODULE=pragment.settings.deploy --bind 0.0.0.0:8000"]

