# Docker Tag Images, Using Python Slim Buster.
FROM kenzo404/lynxuser:Buster
# ==========================================
#              Lynx - Userbot
# ==========================================
RUN git clone -b Lynx-Userbot https://github.com/KENZO-404/Lynx-Userbot /home/Lynx-Userbot \
    && chmod 777 /home/Lynx-Userbot \
    && mkdir /home/Lynx-Userbot/bin/

# Copies config.env (if exists)
COPY ./sample_config.env ./config.env* /home/Lynx-Userbot/

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/KENZO-404/Lynx-Userbot/Lynx-Userbot/requirements.txt
WORKDIR /home/Lynx-Userbot/

# Finishim
CMD ["python3","-m","userbot"]
