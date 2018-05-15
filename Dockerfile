FROM python:2.7.15-slim

RUN apt-get update && \
      apt-get install -y gcc && \
      rm -rf /var/lib/apt/list/*

Add app /discovery/app
Add *.py requirements.txt setup.cfg /discovery/
WORKDIR /discovery
RUN pip install -r requirements.txt
CMD ["python", "-u", "wsgi.py"]
