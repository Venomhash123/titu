FROM python:3.10.5-slim-buster


WORKDIR .
RUN apt -qq update && apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo aria2
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN apt install ffmpeg

CMD ["python3", "main2.py"]
