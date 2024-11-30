FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/yoon-woong-gi/Madison_Pin_Board.git

WORKDIR /home/Madison_Pin_Board/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-5lw@xb2=h#5l0+n0vo)wbdb&5v34s2#71rpdhl9@39it_55jy+" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]