FROM python:3

WORKDIR /usr/src

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

RUN git config --global user.email "sititou70@gmail.com" && git config --global user.name "sititou70"