FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# COPY optional-requirements.txt ./
# RUN pip install --no-cache-dir -r optional-requirements.txt

ENV CALIBRE_PORT=8080

COPY . .

CMD [ "python", "./cps.py" ]
