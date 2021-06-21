FROM telegraf:1.18.3

LABEL author="Richard Crouch"
LABEL description="NCM Probe Sandbox"

# generate logs in unbuffered mode
ENV PYTHONUNBUFFERED=1

RUN apt -y update
#RUN apt -y upgrade
#RUN apt -y install fping iperf3

RUN apt -y install joe

COPY telegraf.conf /etc/telegraf/telegraf.conf

# Install Python dependencies
#RUN pip3 install pipenv
#COPY Pipfile* ./
#RUN pipenv install --system --deploy

# Copy application and files
#RUN mkdir /app
#COPY app/*.py /app/
#WORKDIR /app


# run Python unbuffered so the logs are flushed
#CMD ["python3", "-u", "netmond.py"]
CMD ["tail", "-f", "/dev/null"]