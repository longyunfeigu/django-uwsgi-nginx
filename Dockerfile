FROM python:3.6.4
ENV PYTHONUMBUFFERED 1
ENV MYSQL_DATABASE_NAME gu
ENV MYSQL_ENV_MYSQL_ROOT_PASSWORD "123456"
ENV MYSQL_PORT_3306_TCP_ADDR "db"
RUN mkdir /site
WORKDIR /site
ADD requirements.txt /site/
RUN pip3 install -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com django==2.1
RUN pip3 install -r requirements.txt
ADD . /site/