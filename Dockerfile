FROM sphinxdoc/sphinx

WORKDIR /docs

ADD requirements.txt /docs
RUN pip3 install -r requirements.txt

CMD ["docker/entrypoint.sh"]
