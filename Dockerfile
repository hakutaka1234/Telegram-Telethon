#==============×==============#
#      Created by: Nande
#=========× Nande ×=========#

FROM nandeuserbot/nandebot:nande

RUN git clone -b Telegram-Telethon https://github.com/hakutaka1234/Telegram-Telethon /home/telegrambot/ \
    && chmod 777 /home/telegrambot \
    && mkdir /home/telegrambot/bin/

COPY ./sample_config.env ./config.env* /home/telegrambot/

WORKDIR /home/telegrambot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
